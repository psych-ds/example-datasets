# example-datasets

This repository is the home for a series of datasets that our intrepid guinea pig researchers will attempt to adapt to the Psych-DS specification. These datasets will (initially) help us discover practical challenges and remaining ambiguities in the specification and (later) provide a series of examples that can be used by researchers looking for examples & templates, and for developers looking to test code (e.g. the validator!) over real data.

There are two ways you can contribute to this effort:

(1) _Add data_ by [forking this repository and then submitting a pull request](https://help.github.com/articles/creating-a-pull-request/) OR by emailing Melissa Kline (mekline@mit.edu) if you want to contribute or modify a dataset and aren't familiar with GithHub.

(2) _Make the instructions better_ by editing the (How-To)[https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing] document: It currently contains a skeleton of how to create spec-compliant datasets, and we'll iterate on it so it actually provides *helpful* help for someone using the specification for the first time. 

Anyone can contribute to this project! Please have a look at the [Psych-DS code of conduct](https://github.com/psych-ds/psych-DS/blob/master/CODE_OF_CONDUCT.md) for our community guidelines, and feel free to email Melissa Kline (mekline@mit.edu) with any questions about the guinea pig datasets or Psych-DS more generally.  If you contribute a dataset, make sure to add yourself to the (list of guinea pig datasets)[https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing]!

## Status

Here we go! Volunteers will be uploading their source_data/ files over the next few weeks, and then modifying them to meet the specification. 

## Datasets currently in here

* Template dataset - Melissa Kline

# How to add to this repository

(1) Make a github account, if you don't have one.

(2) Download/fork the repository to your computer. (It's also fine to hit the big green button on the right to download a copy if you aren't familiar with this part yet.)

(3) Make a copy of the `template_dataset` folder.  Give it a short, memorable name. Make sure this exactly matches what you put in the 'Project Handle' column of the (dataset list)[https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing].

(4) Add your dataset *in its current form* to 
```
MyProject/raw_data/source_data 
```

This will be helpful when we're helping each other finish these examples, and hopefully useful for others trying to understand how their datasets could look! The data you put in `MyProject/raw_data/source_data` will stay where it is for the life of this project, and you'll add the up-to-spec TSV files in `MyProject/raw_data/`

(5) Before doing anything else, submit an initial pull request (with the dummy README/dataset_description files and everything) or send your folder to mekline@mit.edu. Don't wait until you're totally finished and everything is perfect - the point of this exercise is to identify what kinds of datasets and what parts of the process wind up being challenging for the current version of the specification!!!!

(6) Work on fixing up your data, metadata, and folder structure! Please take notes as you go - your process is as important as the output. Please add tools, screencaps, and anything else helpful to the How-To document!

# Tips & resources

* [Article on the Schema.org Dataset structure](https://developers.google.com/search/docs/data-types/dataset). Click 'See Markup' under Examples for a pre-populated set of dataset JSON you can play with and validate against!

* Doomlab and rOpenSci dataspice apps

* Codebook by Ruben Arslan

* Probably many others! Please add to the How-To document when you use them!


