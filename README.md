# Example Datasets for Psych-DS

This is a gallery of public datasets which have been formatted* according to the [Psych-DS data standard](https://psychds-docs.readthedocs.io/en/latest/guides/1_getting_started/). They primarily come from various subfields of psychology, and at the moment (early 2025) are primarily either versions of datasets that are freely available elsewhere online, or templates designed to help people create new Psych-DS datasets.

You can browse these datasets to learn more about how Psych-DS works, download one to try out the [Psych-DS in-browser validator](https://psych-ds.github.io/validator/), or use them as test cases to develop tools that are designed to work with Psych-DS data.

Anyone can contribute to this project! Please have a look at the [Psych-DS code of conduct](https://github.com/psych-ds/psych-DS/blob/master/CODE_OF_CONDUCT.md) for our community guidelines, and feel free to email Melissa Kline Struhl (mekline@mit.edu) with any questions about these datasets or Psych-DS more generally.  

**Status update**: Updated 2025-04-10 in preparation for wider Psych-DS release.

**Note that there is one dataset in this repository that will *not* successfully validate: `informative-mistakes-dataset/`. That one is a small example designed to show various kinds of mistakes that will cause a dataset to fail validation. Check out its companion `mistakes-corrected-dataset/` for a version that passes validation!*

[List of datasets](#anchor-1)

[How to contribute a dataset](#anchor-2)

[More about Psych-DS and additional resources](#anchor-3)

## <a name="anchor-1">List of datasets</a>

#### Datasets designed for testing the specification

* Template, Complex-Metadata, Informative-Mistakes and Mistakes-Corrected datasets - Melissa Kline Struhl, updated by Brian Leonard
  
#### Real datasets contributed by researchers

* NIH reviews - Patrick S. Forscher
* Faces and Bodies - Lisa DeBruine
* BFI - Ioanna Iro Eleftheriadou
* Object Orientation - Sau-Chin Chen
* Macrophage Conditioning - Love Ahnström
* Safi Survey - Eduard Klapwijk

## <a name="anchor-2">How to contribute a dataset</a> 

### Step 1: Prepare Your Dataset

First, you'll need to create a properly structured dataset following the Psych-DS format. You can find detailed instructions for how to do this in the [Getting Started guide](https://psychds-docs.readthedocs.io/en/latest/guides/1_getting_started/) from the Psych-DS docs. 

Within the metadata file for your dataset, make sure to include a note in the description field with the date that you'll be uploading this dataset to our repository. It is also best to fill the Author field with information about yourself and your fellow authors. If you are not the author of the dataset, you can include your identity in the metadata by adding yourself in the "sdPublisher" field.

Here's a simplified example metadata file:

```
{
  "@context": "https://schema.org/",
  "@type": "Dataset",
  "name": "Visual Perception Study 2023",
  "description": "This dataset contains results from a visual perception experiment conducted in 2023.
                  Uploaded to the Psych-DS example repository on date XYZ",
  "author": {
    "@type": "Person",
    "givenName": "John",
    "familyName: "Doe",
    "id": "0000-0002-1825-0097" // this is an ORCID ID, e.g.
  },
  "sdPublisher": {
    "@type": "Person",
    "givenName": "Jane",
    "familyName: "Doe",
    "id": "0000-0002-3245-1127" // this is an ORCID ID, e.g.
  },
  "variableMeasured": [
    "participant_id",
    "trial_number",
    "stimulus_type",
    "response_time_ms",
    "accuracy"
  ]
}
```

### Step 2: Validate Your Dataset

Before submitting, you must validate your dataset using the official Psych-DS validator:

1. Visit the [Psych-DS Validator](https://psych-ds.github.io/validator/)
2. Select your dataset directory
3. Ensure that your dataset passes all validation checks
4. If there are any errors, fix them and re-validate until your dataset passes all checks

### Step 3: Submit Your Dataset via Pull Request

Once your dataset is validated, you can submit it to our repository:

#### Option A: Using GitHub in the Browser

1. Fork the Psych-DS example datasets repository

<img width="618" alt="sc1" src="https://github.com/user-attachments/assets/6718bd32-35da-4c71-b464-ca7df6cb7f97" />

<img width="747" alt="sc2" src="https://github.com/user-attachments/assets/be0093ab-252c-4b9d-885c-adc27ec35186" />

2. Navigate to your forked repository (it should send you there automatically, but otherwise it can be found under your account's repository list with the name "example-datasets"

<img width="319" alt="sc3" src="https://github.com/user-attachments/assets/a738f3b7-3755-4bbc-a268-fa0c24d161fe" />

3. Click "Add file" → "Upload files"

<img width="479" alt="sc4" src="https://github.com/user-attachments/assets/8c2d4623-f202-4abd-8a0d-02ad63a99b54" />

4. Drag and drop your entire dataset directory or use the file selector
5. Add a commit message explaining what dataset you're adding
6. Click "Commit changes"
7. Edit the Readme file to include yourself in the contributors section and click "Commit changes"

<img width="911" alt="sc5" src="https://github.com/user-attachments/assets/ce80e35c-da81-4e90-81c5-0f10f09806df" />

<img width="400" alt="sc6" src="https://github.com/user-attachments/assets/3298f6c4-7334-4371-b856-4a7e68fe0d9a" />

8. Navigate to the "Pull requests" tab and click "New pull request"

<img width="510" alt="sc7" src="https://github.com/user-attachments/assets/2db93ece-d97a-43d4-8c92-eb3027def6e5" />

Then:

<img width="443" alt="sc8" src="https://github.com/user-attachments/assets/7c881fbc-3731-4c8b-87ba-99bb66b64d09" />

9. Select "base repository: psych-ds/example-datasets" and "head repository: your-username/example-datasets"

<img width="920" alt="sc10" src="https://github.com/user-attachments/assets/5234206f-707c-43a2-b9e1-57cfc0be1d60" />

10. Click "Create pull request"
11. Add a title and description for your PR
12. Click "Create pull request"

#### Option B: Using Git on the Command Line

1. Fork the repository on GitHub
2. Clone your forked repository:
   ```
   git clone https://github.com/your-username/example-datasets.git
   ```
3. Copy your dataset directory into the repository
4. Add your name and the name of your dataset the contributors list of the README file
5. Add your changes:
   ```
   git add .
   ```
6. Commit your changes:
   ```
   git commit -m "Add dataset: Visual Perception Study 2023"
   ```
7. Push to your fork:
   ```
   git push origin main
   ```
8. Go to GitHub and create a pull request from your new branch

### What Happens After Submission?

After submitting your PR:
1. Our team will review your dataset
2. We may request changes if needed
3. Once approved, your dataset will be merged into the main repository
4. Your name will appear in the contributors list
   
## <a name="anchor-3">More about Psych-DS/additional resources</a>

Psych-DS is a community data standard for research in psychology and other behavioral sciences, which provides a flexible set of conventions for formatting and documenting scientific datasets. It is heavily inspired by the [Brain Image Data Structure (BIDS)](https://bids.neuroimaging.io/) standard for fMRI data.

Psych-DS provides a simple and easy-to-adopt standard for organizing data in the psychological and behavioral sciences, which aims to help researchers satisfy [FAIR](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4792175/) principles for data sharing.

* Return to the [Psych-DS homepage](https://psych-ds.github.io/).

* Browser-based [Psych-DS Validator](https://psych-ds.github.io/validator/)(!)

* [Psych-DS Documentation](https://psychds-docs.readthedocs.io/en/latest/guides/1_getting_started/)

* [Article on the Schema.org Dataset structure](https://developers.google.com/search/docs/data-types/dataset). Click 'See Markup' under Examples for a pre-populated set of dataset JSON you can play with and validate against!





