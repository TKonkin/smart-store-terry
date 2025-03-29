# smart-store-terry
This is the repository for the BI and Analytics course

# smart-sales-starter-files

Starter files to initialize the smart sales project.

-----


## Project Setup Guide (Windows)

Run all commands from a PowerShell terminal in the root project folder.

### Create a Local Project Virtual Environment

```shell
py -m venv .venv
```

### Activate the Virtual Environment

```shell
.venv\Scripts\activate
```

### Install Packages

```shell
py -m pip install --upgrade -r requirements.txt
```

### Optional: Verify .venv Setup

```shell
py -m datafun_venv_checker.venv_checker
```

### Run the initial project script

```shell
py scripts/data_prep.py
```

-----

## Initial Package List

- pip
- loguru
- ipykernel
- jupyterlab
- numpy
- pandas
- matplotlib
- seaborn
- plotly
- pyspark==4.0.0.dev1
- pyspark[sql]
- git+https://github.com/denisecase/datafun-venv-checker.git#egg=datafun_venv_checker

## Implement and Test General DataScrubber Class

### Run the Test Script

In your VS Code terminal, 
with your local project virtual environment **active** (and all necessary packages installed),
run the test script with the following command. 

In Windows / PowerShell:

```shell
py tests\test_data_scrubber.py
```

```

The first time you run it, all tests will not pass correctly. 

### Finish DataScrubber Until All Tests Pass Successfully

Edit your scripts\data_scrubber.py file to complete the TODO actions. Verify by running the test script. 
Once all tests pass, you are ready to use the Data Scrubber in your data_prep.py (or other data preparation script). 

-----

## Complete all Data Preparation

For this step, use pandas and the DataScrubber class as needed to clean and prepare each of the raw data files. 

We have an example data_prep.py file provided that illustrates common cleaning tasks and how to use the DataScrubber class. 

Right now, all files are cleaned in a single scripts/data_prep.py file, but you may find it better to have smaller files, maybe one per raw data table. 

Given the examples and the work done previously, read, clean, and preprocess all your raw data files and save the prepared versions in the data/prepared folder. 

We recommand a naming scheme - following this will make future assignments a bit easier as we will use these file names and locations, 
however, you are welcome to vary the names. Your future scripts will need to correctly reflect your folder and file naming conventions. 
Changing is harder and better for learning. If new, please follow our folder and file naming conventions exactly.

If your file is in the scripts folder, with a name of data_prep.py, you can run it with the appropriate command from a VS Code terminal open in the root project folder:

In Windows / PowerShell:

```shell
py scripts\data_prep.py
```
