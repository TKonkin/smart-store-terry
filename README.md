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

### Create and Populate DW Folder
Design Schema
Create and Populate Schema
Verify Tables in SQLite Viewer

### Reporting with Power BI
Setup BI environment

Connect to data warehouse

Query & aggregate data
Create new query to display customer name vs total sales

Create interactive visualizations
There are 2 dashboards, correlating with P5/Tasks 5 & 6, respectively

### Project P6. BI Insights and Storytelling

Section 1. The Business Goal (PRODUCTS_TOP_SELLERS_BY_QUANTITY)
Identify the products with the highest number of units sold.  This helps to determine which products are the best sellers in terms of volume, guiding inventory management and marketing strategies.

Section 2. Data Source
The data source is the smart_sales database, within the data warehouse dw.
The columns used are:
product/productname - the name associated with each unique product id
sale/SaleAmount - total revenue from a transaction

Section 3. Tools
As there was no advanced analytics required, Power BI has sufficient capabilities to be the only tool used for the project.

Section 4. Workflow & Logic
Descriptive dimensions: productid, productname
Numeric metric: SaleQuantity
Aggregations: sum
Slicing: by product name
Driildown: to month
Workflow: Create the calculated column sale/SaleQuantity and aggregate using sum
Output: Column chart + line chart + pie chart

Section 5. Results
Figure 1 displays a column chart of SaleQuantity by product name, in decreasing order.  From the chart, the 2 lowest products by quantity sold are cable and football.
Figure 2 displays the quantity by month of the products cable & football only.  From the chart, football had more consistent sales than cable.
Figure 3 displays the relationship of sales quantity for cable and football.  From the chart, the proportion of sales quantity for football is noticeably greater than for cable.

Section 6. Suggested Business Action
It is suggested to conduct further analysis of both cable and football, with the objective of either increased marketing or discontinuation.
Additional analysis would consider manufacturing cost, profit, profit margin, and sales revenue.

Section 7. Challenges
Minimal challenges due to both the level of analytics needed, and the functionality of the BI tool.
The data type in the SaleDate column was reformatted to date, for creating time charts.

### P7. BI Insights and Storytelling

Section 1. The Business Goal (2-SALES_GROWTH_OVER_TIME)
Analyze sales growth over time by comparing the total sales amount in different time periods. This can help identify trends and assess the effectiveness of marketing strategies or other business initiatives.

Section 2. Data Source
The data source is the smart_sales database, within the data warehouse dw.
The columns used are:
sale/SaleDate - date of the transaction
sale/SaleAmount - total revenue from a transaction

Section 3. Tools Used
As there was no advanced analytics required, Power BI has sufficient capabilities to be the only tool used for the project.

Section 4. Workflow & Logic
Section 5. Results (narrative + visualizations)
Section 6. Suggested Business Action
Section 7. Challenges
Section 8. Ethical Considerations

