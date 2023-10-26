# README - Faces and Bodies

This project evaluate the replicability of object orientation effect across languages. The original paradigm was developed in English (Stanfield and Zwaan, 2001). The available materials were released by Zwaan and Pecher (2012).  

## Files

**STI_LIST.xls**: The sheets of all materials and stimuli lists. 
    - *STI*: Collection of all critical stimuli. `Picture_H`: File names of object pictures presented in horizontal; `Picture_V`: File names of object pictures presented in vertical; `XXX_Sentence_H`: Sentences implied the horizontal orientation of the target object; `XXX_Sentence_V`: Sentences implied the vertical orientation of the target object. XXX stands for the which language the sentences written in.
    - *Fillers*: Collection of all filler stimuli. `Picture_Fillers_A` and `Picture_Fillers_B`: File names of object pictures which are irrelevant to the corresponding sentences; `XXX_Sentence_Fillers_A` and `XXX_Sentence_Fillers_B`: Sentences which do not imply the particular orientation of object; XXX stands for the which language the sentences written in.
    - *Prac1* and *Prac2*: Stimuli list of practice trials. 
    - *XXX_LIST1*, *XXX_LIST2*, *XXX_LIST3*, and *XXX_LIST4*: Stimuli lists of experimental trials for sentence-picture verification. XXX stands for the which language the sentences written in.
    - *PP_LIST1*, *PP_LIST2*, *PP_LIST3*, and *PP_LIST4*: Stimuli lists of experimental trials for picture-picture verification. 
    
**LAB_processing.R**: R script which merge raw data and filter the variables to be analyzed. There will be three csv files created in the folder `raw_data`: `ID_SP_V.csv`,`ID_SP_M.csv`, and `ID_PP.csv`. `ID` stands for the specific ID for the study site. This script is for the processing of the data from one study site.

**OrientationCrossLanguages_2018PSA_SP_1.2.0.osexp**: Opensesame script of sentence-picture verification task for one study site. The instructions and materials will be translated to the site language before the beginning.

**OrientationCrossLanguages_2018PSA_PP_1.2.0.osexp**: Opensesame script of picture-picture verification task for one study site. The instructions and materials will be translated to the site language before the beginning.

## Codebooks of data files
- **ID_SP_V.csv**
subject_nr: Participant ID (Integers: 1 ~ 160)
task_order: Yes(SP task was the first study); No (SP task was after the other study); none of above(SP task was conducted for the other reason)
PList: List files for practice trials.
List:  List files for experimental trails.
Match: Matching of sentence and target object orientation.
Orientation: Defined orientation of the target object. 
Probe: Probe sentences in the particular trials.
Target: Target object files.
response: The triggered response key in the particular trials.
correct: Correctness of participant's response in the particular trials.
response_time: Reaction time to trigger the response in the particular trials. 
fullscreen: yes(SP task was conducted under fullscreen mode);no(SP task was not conducted under fullscreen mode)
File: Source file names of the participants' raw data.
opensesame_codename: Code name of Opensesame installed in the study site.
opensesame_version: Version of Opensesame installed in the study site.
experiment_file: Filename of Opensesame script this study site applied for their participants.

- **ID_SP_M.csv**
subject_nr: Participant ID (Integers: 1 ~ 160)
task_order: Yes(SP task was the first study); No (SP task was after the other study); none of above(SP task was conducted for the other reason)
PList: List files for practice trials.
List:  List files for experimental trails.
compensation: The probe sentences were selected for the memory trials.
response: The triggered response key in the particular trials.
correct: Correctness of participant's response in the particular trials.
response_time: Reaction time to trigger the response in the particular trials. 
fullscreen: yes(SP task was conducted under fullscreen mode);no(SP task was not conducted under fullscreen mode)
File: Source file names of the participants' raw data.
opensesame_codename: Code name of Opensesame installed in the study site.
opensesame_version: Version of Opensesame installed in the study site.
experiment_file: Filename of Opensesame script this study site applied for their participants.

- **ID_PP.csv**
subject_nr: Participant ID (Integers: 1 ~ 160)
PPList: List files for experimental trials.
Identical: Y(Two object were presented in the same orientation), N(Two object were presented in different orientation).
Orientation1: Orientation of left object.
Orientation2: Orientation of right object
Picture1: Picure file name of left object.
Picture2: Picure file name of right object.
response: The triggered response key in the particular trials.
correct: Correctness of participant's response in the particular trials.
response_time: Reaction time to trigger the response in the particular trials. 
gender: Participant's gender (Male, Female, Not to be identified, No will to say).
year: Participant's birth year (4 digits integer) 
month: Participant's birth month (1~12)
fullscreen: yes(PP task was conducted under fullscreen mode);no(PP task was not conducted under fullscreen mode)
File: Source file names of the participants' raw data.
opensesame_codename: Code name of Opensesame installed in the study site.
opensesame_version: Version of Opensesame installed in the study site.
experiment_file: Filename of Opensesame script this study site applied for their participants.

## Citation

Stanfield, R. A., & Zwaan, R. A. (2001). The effect of implied orientation derived from verbal context on picture recognition. Psychological Science, 12(2), 153–156. https://doi.org/10.1111/1467-9280.00326

Zwaan, R. A., & Pecher, D. (2012). Revisiting Mental Simulation in Language Comprehension: Six Replication Attempts. PLoS ONE, 7, e51382. https://doi.org/10.1371/journal.pone.0051382
