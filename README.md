# example-datasets

This repository is the home for a series of datasets that are either ready to be updated to the Psych-DS specification, or which have been updated (pending availability of actual validation!) These datasets will (initially) help us discover practical challenges and remaining ambiguities in the specification and (later) provide a series of examples that can be used by researchers looking for examples & templates, and for developers looking to test code (e.g. the validator!) over real data.

Here is how to contribute to this repository - any of the steps below will be tremendously helpful to us!

(1) **Try out a Psych-DS conversion** Choose a dataset you are comfortable sharing publicly. First, make a *separate* copy of the dataset (so you maintain the original version), and follow the [How-To](https://docs.google.com/document/d/1k3ZzAF8vrJeIcMN3q5g_l7WJtoybokvq5ueYVH0dcC8/edit?usp=sharing) document to convert it to Psych-DS format. (You can also follow these instructions for a private dataset you don't intend to upload.) However far you get, leave comments on the google doc where the instructions aren't clear. We'll iterate so it provides *helpful* instructions for someone using the specification for the first time. 

(2) **Add datasets to this repository** by following the instructions below OR by emailing Melissa Kline Struhl (mekline@mit.edu) if you want to contribute or modify a dataset and aren't familiar with GithHub. If you like, add folders for both your originally structured data and the Psych-DS version - right now, both types are extremely helpful for us, because we are testing how the validator performs on different kinds of data. If you do this, please name your folders like this: `mydatasetname-original` and `mydatasetname-psychds`.

(3) If you contribute a dataset, make sure to also add yourself to the [list of guinea pig datasets](https://docs.google.com/spreadsheets/d/1QcfJqGPyBkdO0n4rCcye-Nfb3XWRYETOF3NMbwwPyJ4/edit?usp=sharing)!

Anyone can contribute to this project! Please have a look at the [Psych-DS code of conduct](https://github.com/psych-ds/psych-DS/blob/master/CODE_OF_CONDUCT.md) for our community guidelines, and feel free to email Melissa Kline Struhl (mekline@mit.edu) with any questions about the guinea pig datasets or Psych-DS more generally.  

## Status

*We are actively seeking volunteers* to upload their source_data/ files to this repo, then modify them to meet the Psych-DS specification. 

## Datasets currently in here

### Datasets designed for testing the specification

* Template, Complex-Metadata, Informative-Mistakes and Mistakes-Corrected datasets - Melissa Kline Struhl
  
### Real datasets contributed by researchers

* NIH reviews - Patrick S. Forscher
* Faces and Bodies - Lisa DeBruine
* BFI - Ioanna Iro Eleftheriadou
* Object Orientation - Sau-Chin Chen

# How to add to this repository

(1) **Make a github account** if you don't already have one. Github is a wide-ranging suite of tools, but today you will be using it to drag and drop a single folder into your browser.  You will do this by

- Creating a *branch* (version of the repository)
- Adding your folder to the branch
- Creating a *pull request*, which asks the creators of this repository to look at your branch, and merge the new changes into the main version of the repository. 


# Tips & resources

* [Article on the Schema.org Dataset structure](https://developers.google.com/search/docs/data-types/dataset). Click 'See Markup' under Examples for a pre-populated set of dataset JSON you can play with and validate against!

* Doomlab and rOpenSci dataspice apps

* Codebook by Ruben Arslan

* Probably many others! Please add to the How-To document when you use them!


