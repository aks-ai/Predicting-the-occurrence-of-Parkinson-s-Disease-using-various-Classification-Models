# Predicting-the-occurrence-of-Parkinson-s-Disease-using-various-Classification-Models

This repository contains the implementation of various machine learning models used to detect Parkinson's disease from biomedical voice measurements. The dataset and methods used follow the work presented in the paper titled **"Machine Learning Approaches for Detecting Parkinson’s Disease Using Biomedical Voice Measurements"**.

**My Publication/Paper link**: [Predicting-the-occurrence-of-Parkinson-s-Disease-using-various-Classification-Models](https://ieeexplore.ieee.org/document/8933579)

## Project Description

The repository includes the following machine learning models:

- Artificial Neural Networks (ANN) - `ann.R`
- Decision Tree Classification - `decision_tree_classification.R`
- Kernel SVM - `kernel_svm.R`
- K-Nearest Neighbors (KNN) - `knn.R`
- Logistic Regression - `logistic_regression.R`
- Naive Bayes - `naive_bayes.R`
- Random Forest Classification - `random_forest_classification.R`
- Support Vector Machine (SVM) - `svm.R`

Additionally, this repository contains the results of the classification models in the file `parkinson_results.txt`.

## Running the Code

1. **Install R**: Make sure you have R installed on your system. You can download it from [R Project](https://www.r-project.org/).
   
2. **Install Required Packages**: Some models might require additional R packages. You can install them using the following commands:

   ```R
   install.packages("e1071")  # For SVM, Naive Bayes
   install.packages("randomForest")  # For Random Forest
   install.packages("nnet")  # For ANN
   install.packages("caTools")  # For splitting datasets
   install.packages("class")  # For KNN
   install.packages("rpart")  # For Decision Tree
   ```

3. **Run Each Script**: Each R script is designed to train a different model on the Parkinson's disease dataset. To run any script, use the following command in the R console:

   ```R
   source('script_name.R')
   ```

   Replace `script_name.R` with the name of the script you want to run, for example `decision_tree_classification.R`.

4. **Check Results**: The results of each model will be output to the console or can be found in the `parkinson_results.txt` file.

## Dataset

The dataset used is the **Oxford Parkinson's Disease Detection Dataset**, which is a collection of biomedical voice measurements from people with Parkinson's disease and healthy individuals.

- **Dataset link**: [Parkinson's Disease Data Set](https://archive.ics.uci.edu/dataset/174/parkinsons)
- **Number of Instances**: 197 voice recordings from 31 individuals (23 with Parkinson's disease and 8 healthy individuals)
- **Number of Attributes**: 23 attributes including vocal fundamental frequency measures, jitter, shimmer, and nonlinear dynamical complexity measures.
- **Dataset Format**: The data is in ASCII CSV format.

### Dataset Information

This dataset consists of biomedical voice measurements from individuals, of which 23 are diagnosed with Parkinson's disease (PD). Each row corresponds to one of the 195 voice recordings from these individuals. The main aim of the dataset is to distinguish healthy individuals from those with Parkinson's disease, as indicated by the `status` column (0 for healthy and 1 for PD).

The dataset was created by Max Little from the University of Oxford in collaboration with the National Centre for Voice and Speech, Denver, Colorado. It is based on recordings of sustained phonation and was originally published to investigate voice disorders.

For more details on the dataset and its attributes, you can refer to the dataset documentation or the following reference:

- **Reference**: Max A. Little, Patrick E. McSharry, Eric J. Hunter, Lorraine O. Ramig (2008), _Suitability of dysphonia measurements for telemonitoring of Parkinson's disease_, IEEE Transactions on Biomedical Engineering.

### Attributes Description

The dataset has the following 23 attributes:

- **name**: ASCII subject name and recording number
- **MDVP:Fo(Hz)**: Average vocal fundamental frequency
- **MDVP:Fhi(Hz)**: Maximum vocal fundamental frequency
- **MDVP:Flo(Hz)**: Minimum vocal fundamental frequency
- **MDVP:Jitter(%), MDVP:Jitter(Abs), MDVP:RAP, MDVP:PPQ, Jitter:DDP**: Several measures of variation in fundamental frequency
- **MDVP:Shimmer, MDVP:Shimmer(dB), Shimmer:APQ3, Shimmer:APQ5, MDVP:APQ, Shimmer:DDA**: Several measures of variation in amplitude
- **NHR, HNR**: Two measures of noise-to-tonal components ratio in the voice
- **RPDE, D2**: Two nonlinear dynamical complexity measures
- **DFA**: Signal fractal scaling exponent
- **spread1, spread2, PPE**: Three nonlinear measures of fundamental frequency variation 
