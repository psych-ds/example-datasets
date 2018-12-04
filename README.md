# example-datasets

This repository is the home for a series of datasets that our intrepid guinea pig researchers will attempt to adapt to the Psych-DS specification. These datasets will (initially) help us discover practical challenges and remaining ambiguities in the specification and (later) provide a series of examples that can be used by researchers looking for examples & templates, and for developers looking to test code (e.g. the validator!) over real data.

Contributing to this project (by adding a dataset of your own or helping with someone else's) can be done in two ways:

(1) By [forking this repository and then submitting a pull request](LINK) OR by emailing Melissa Kline (mekline@mit.edu) if you want to contribute or modify a dataset and aren't familiar with GithHub.

(2) By modifying the 'how to' document: It currently contains a skeleton of how to create spec-compliant datasets, and we'll iterate on it so it actually provides *helpful* help for someone using the specification for the first time. 

*Anyone* can contribute to this project! Please have a look at the [Psych-DS code of conduct](LINK) for our community guidelines, and feel free to email Melissa Kline (mekline@mit.edu) with any questions about the guinea pig datasets or Psych-DS more generally.  

## Status

Here we go! Volunteers will be uploading their source_data/ files over the next few weeks, and then modifying them to meet the specification. 

The google doc How-To document is [here](https://docs.google.com/document/d/1k3ZzAF8vrJeIcMN3q5g_l7WJtoybokvq5ueYVH0dcC8/edit?usp=sharing); please modify it freely. 

## Datasets currently in here

None! Soon to be the example & template datasets.

# How to add to this repository

(1) Make a github account

(2) Download/fork the repository

## Add a new dataset

(1) Please start by adding and submitting a pull request (or bothering Melissa directly for help uploading) that contains JUST your dataset/additional documents in whatever form you CURRENTLY have it in: Having this starting state will help us keep track of what kinds of changes need to happen to 'real' datasets. 

You can start by copying and modifying the `template_psych-DS` folder.  Give it a short, memorable name. Then, *leave the rest of the structure alone* and put your raw datafiles in one of two places:

```
MyProject/ <- i.e. right at the top level
MyProject/raw_data/source_data <- the 'home' for pre-specification version of the dataset
```
The data you put in `MyProject/raw_data/source_data` will stay where it is, and you'll add the up-to-spec files in `MyProject/raw_data/`

(2) After making this initial commit/pull request, do whatever you need to do to meet the spec (as written), and *keep notes* - in addition to having the examples, the goal of this project is to 

## Modify an existing one
