#!/bin/bash

# Working directory - remember to specify accordingly.
export WORK_DIR=$PWD

# Data directories
export DATA=$WORK_DIR/data
export DATA_RAW=$DATA/raw
export DATA_PROC=$DATA/processed

# Source code directory
export SRC=$WORK_DIR/src

# Executables
export EXEC=$WORK_DIR/exec

# Jupyter Notebooks directory
export NOTEBOOKS=$WORK_DIR/notebooks

# Variables related to fetching Kaggle data
export FETCH_KAGGLE_DATA=$SRC/fetch_kaggle_data.py # the python script
export KAGGLE_DATASET='fedesoriano/stroke-prediction-dataset' # the Kaggle dataset to download
export KAGGLE_NEW_NAME='stroke_raw.csv' # the new name of the Kaggle data set

# Variables related to data cleaning and preparation
export CLEAN_DATA_SCRIPT=$SRC/clean_data.py # the python script
export INPUT_FILE_PATTERN=$DATA_RAW'/*_'$KAGGLE_NEW_NAME # filename pattern with date as wild-card
export UNWANTED_COLS='id' # columns to remove (like this: 'id,age,bmi')
export LABEL_COL='stroke' # the column with classification labels
export CLEAN_THE_DATA=$EXEC/data_prep.sh # the bash script to clean and prepare the data

# Variables related to comparing binary classifiers
export BINARY_CLFS_SCRIPT=$SRC/binary_classifiers.py
export COMPARE_BINARY_CLFS=$EXEC/compare_binary_clf.sh

