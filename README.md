# example-datasets

This repository is the home for a series of datasets that our intrepid hackathon attendees will attempt to adapt to the Psych-DS specification. These datasets will (initially) help us discover practical challenges and remaining ambiguities in the specification and (later) provide a series of examples that can be used by researchers looking for examples & templates, and for developers looking to test code (e.g. the validator!) over real data.

There are two ways you can contribute to this effort:

(1) **Add data** by [forking this repository and then submitting a pull request](https://help.github.com/articles/creating-a-pull-request/) OR by emailing Melissa Kline Struhl (mekline@mit.edu) if you want to contribute or modify a dataset and aren't familiar with GithHub.

(2) **Make the instructions better** by editing the [How-To](https://docs.google.com/document/d/1k3ZzAF8vrJeIcMN3q5g_l7WJtoybokvq5ueYVH0dcC8/edit?usp=sharing) document. Over the course of collecting example datasets and bringing them up-to-spec, we'll iterate on it so it provides *helpful* instructions for someone using the specification for the first time. 

Anyone can contribute to this project! Please have a look at the [Psych-DS code of conduct](https://github.com/psych-ds/psych-DS/blob/master/CODE_OF_CONDUCT.md) for our community guidelines, and feel free to email Melissa Kline Struhl (mekline@mit.edu) with any questions about the guinea pig datasets or Psych-DS more generally.  If you contribute a dataset, make sure to add yourself to the [list of guinea pig datasets](https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing)!


## Status

*We are actively seeking volunteers* to upload their source_data/ files to this repo, then modify them to meet the Psych-DS specification. 

## Datasets currently in here

* Template, Complex-Metadata, Informative-Mistakes and Mistakes-Corrected datasets - Melissa Kline Struhl
* NIH reviews - Patrick S. Forscher
* Faces and Bodies - Lisa DeBruine
* BFI - Ioanna Iro Eleftheriadou
* Object Orientation - Sau-Chin Chen

# How to add to this repository

(1) **Make a github account** if you don't already have one.

(2) **Download/fork the repository to your computer**. If you're not familiar with github, the "Download" button is the big green one in the screenshot below.

![image](https://user-images.githubusercontent.com/5552513/50309183-786a0c00-0463-11e9-9b08-2bcd3f1c5241.png)

(3) *Make a copy of the `template_dataset` folder in `example-datasets-master`*. Give it a short, memorable name. Add the exact name that you give this folder to the 'Project Handle' column of the [dataset list Google Doc](https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing).

(4) *In your fork, add your dataset **in its current form** to* 
```
example-datasets-master/MyProject/data/source_data 
```

The data you put in `example-datasets-master/MyProject/data/source_data` will stay where it is for the life of this project, and you'll add the up-to-spec CSV files in `example-datasets-master/MyProject/data/`. We want to keep a copy of the unmodified datasets so that we can get a sense of what unmodified psychology datasets look like and so that others can see how their datasets can be changed to bring them up to spec. 

If you manually upload your data to your fork, you **only need to upload your `MyProjects` folder and its contents**. You don't need to upload the full `example-datasets-master` folder.

(5) *Push your modified fork, with your newly-contributed dataset*, to the `example-datasets-master` repo. You can do this either by sending a pull request through github OR by emailing your folder to mekline@mit.edu.

Remember, you don't need to get your dataset up to spec before adding it to `example-datasets-master`; after all, the point of this exercise is to identify what kinds of datasets and what parts of the process wind up being challenging for the current version of the specification!!!!

(6) *Work on fixing up your data, metadata, and folder structure by consulting the Psych-DS spec*. Please take notes as you go; your process is as important as the output! Please also add tools, screencaps, and anything else you find helpful to the How-To document.

# Tips & resources

* [Article on the Schema.org Dataset structure](https://developers.google.com/search/docs/data-types/dataset). Click 'See Markup' under Examples for a pre-populated set of dataset JSON you can play with and validate against!

* Doomlab and rOpenSci dataspice apps

* Codebook by Ruben Arslan

* Probably many others! Please add to the How-To document when you use them!


