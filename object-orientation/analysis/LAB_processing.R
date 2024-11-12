# Be sure all the raw data are in "raw_data" before you run this code.
# This script has to be located in the same folder where we stored "raw_data"

# load required packages
if(!require(tidyverse)) {install.packages("tidyverse");library(tidyverse)} else (library(tidyverse))
if(!require(readbulk)) {install.packages("readbulk");library(readbulk)} else (library(readbulk))

# Import and Merge SP raw data
LAB_SP_raw <- read_opensesame(directory = "raw_data",subdirectories = "SP")

# Split the data of verification and memory
LAB_SP_memory <- LAB_SP_raw %>% subset( Task == "M")
LAB_SP_verification <- LAB_SP_raw %>% subset(Task == "V")

# Import and Merge PP raw data
LAB_PP_raw <- read_opensesame(directory = "raw_data",subdirectories = "PP")

# Check LAB ID
# There will be the code to import the mappings of LAB ID and SEED.

## Filter the variables to be analyzed
SP_verification_variables <- c(names(LAB_SP_raw)[c(155,157,5,2,3,4,6,7,120,21,134,223,104,115,116,94)])
SP_memory_variables <- c(names(LAB_SP_raw)[c(155,157,5,2,19,120,21,134,104,223,115,116,94)])
PP_variables <- c(names(LAB_PP_raw))[c(126,5,1,3,4,6,7,101,19,110,83,176,93,82,178,95,96,72)]

## Export the raw data to be further analyzed.
LAB_SP_verification[,SP_verification_variables] %>%
  write.csv(file = paste0("./raw_data/",LAB_SP_raw$LAB_SEED %>% unique,"_SP_V.csv"), row.names = FALSE)
LAB_SP_memory[,SP_memory_variables] %>%
  write.csv(file = paste0("./raw_data/",LAB_SP_raw$LAB_SEED %>% unique,"_SP_M.csv"), row.names = FALSE)
LAB_PP_raw[,PP_variables] %>%
  write.csv(file = paste0("./raw_data/",LAB_PP_raw$LAB_SEED %>% unique,"_PP.csv"), row.names = FALSE)


## Retrieve the verification response data
## Erase the participants which an accuracy lower than 70%
## Reserve correct responses of S-P verification task
## Data set for mixed-effect model, all observations are reserved
(Complete_LAB_SP = df_LAB_SP %>%
  subset( Task == "V")  %>%
  filter(Match %in% c('Y','N')) %>%        
  filter(correct == 1)) %>%
  write.csv(file = paste0(df_LAB_SP$LID %>% levels(),"_SP_complete.csv"))

## Summarize the cleaned data of this Lab
( Participant_complete_LAB_SP = Complete_LAB_SP %>%
  filter( !(Complete_LAB_SP$PID %in% Excluded_ID) ) %>%
  group_by(LID, PID, ORDER, Match) %>%
  summarise(V_RT = median(response_time, na.rm = TRUE), V_Acc = 100*n()/12) %>%
  left_join(LAB_SP_memory, by = "PID") %>%
  arrange( as.numeric(as.character(PID) ) ) ) %>%
  write.csv(file = paste0(Complete_LAB_SP$LID %>% levels(),"_SP.csv") ) 

## Transform the cleaned data for packaged software
Participant_complete_LAB_SP %>% filter(Match == "Y") %>% 
  select(LID, PID, V_RT, V_Acc, M_acc) %>%
  left_join( (Participant_complete_LAB_SP %>% 
  filter(Match == "N") %>% 
  select(LID, PID, V_RT, V_Acc, M_acc)), by = c("LID","PID") ) %>%
  rename(V_RT_Y = V_RT.x, V_RT_N = V_RT.y, V_acc_Y = V_Acc.x, V_acc_N = V_Acc.y, M_acc_Y = M_acc.x, M_acc_N = M_acc.y) %>%
  write.csv(file = paste0(Complete_LAB_SP$LID %>% levels(),"_SP_JASP.csv") )


## Count the number of available participants
Participant_complete_LAB_SP %>% pull(PID) %>%
  unique() %>%
  length()

###########

# Access PP raw data
LAB_PP_raw <- paste0(csv_dir_path,"\\", list.files(path = csv_dir_path, pattern = "PP", all.files = TRUE,include.dirs = TRUE, recursive = TRUE))

# Define the IDs during imported data
LAB_PP <- lapply(LAB_PP_raw,function(i){
  cbind(LID = (i %>% stri_replace_all_fixed(pattern = paste0(csv_dir_path,"\\"), replacement="") %>% 
                 stri_split_fixed(pattern = "_") %>% unlist(use.names=FALSE) %>%
                 stri_replace_all_fixed(pattern = ".csv", replacement = ""))[1], ## Lab ID
        PID = (i %>% stri_replace_all_fixed(pattern = paste0(csv_dir_path,"\\"), replacement="") %>% 
                 stri_split_fixed(pattern = "_") %>% unlist(use.names=FALSE) %>%
                 stri_replace_all_fixed(pattern = ".csv", replacement = ""))[3], ## Participant ID
        read.csv(i, header=TRUE))
})

# Combine all data into one dataframe
suppressMessages( df_LAB_PP <- do.call(rbind.data.frame, LAB_PP) )

## Compute the accuracies of verification responses by participant
LAB_PP_accuracy <- df_LAB_PP %>%
  group_by(PID) %>%
  summarise(C_acc = mean(correct)*100, trials_N=n())

## Print the number of participants had a lower 70% P-P accuracy
(LAB_PP_accuracy$C_acc < 70) %>% sum()

## Reserve correct responses of P-P verification task
## Data set for mixed-effect model, all observations are reserved
(Complete_LAB_PP = df_LAB_PP %>%
  filter(Identical %in% c('Y','N')) %>%        
  filter(correct == 1)) %>%
  write.csv(file = paste0(df_LAB_PP$LID %>% levels(),"_PP_complete.csv"))

## Summarize the cleaned data of this Lab
(Participant_complete_LAB_PP = Complete_LAB_PP %>%
  filter( !(PID %in% Excluded_ID) ) %>%
  group_by(LID, PID, Identical) %>%
  summarise(V_RT = median(response_time, na.rm = TRUE), V_Acc = 100*n()/12) %>%
  arrange( as.numeric(as.character(PID) ) ) ) %>%
  write.csv(file = paste0(Complete_LAB_PP$LID %>% levels(),"_PP.csv") )

## Transform the cleaned data for packaged software
Participant_complete_LAB_PP %>% filter(Identical == "Y") %>% select(LID, PID, V_RT, V_Acc) %>%
  left_join( (Participant_complete_LAB_PP %>% filter(Identical == "N") %>% select(LID, PID, V_RT, V_Acc)), by = c("LID","PID") ) %>%
  rename(V_RT_Y = V_RT.x, V_RT_N = V_RT.y, V_acc_Y = V_Acc.x, V_acc_N = V_Acc.y) %>%
  write.csv(file = paste0(Complete_LAB_PP$LID %>% levels(),"_PP_JASP.csv") )
