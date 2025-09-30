**Sales Trend Analysis using SQL**

**1. Project Objective:**
	The goal of this project is to perform a time-series analysis of a sales dataset. The analysis focuses on aggregating raw order data into monthly summaries to identify trends, seasonality, and key performance indicators (KPIs). The primary metrics analyzed are monthly revenue, order volume, average sale value, and cumulative growth.

This project serves as a practical exercise in using SQL for data aggregation, transformation, and analysis, particularly with MySQL.


**2. Dataset:**

Name: Superstore Sales Dataset

Source: Kaggle

Format: CSV (Superstore_sales.csv)

Description: The dataset contains detailed, record-level sales data for a fictional superstore, including order dates, product information, sales figures, and profit.


**3. Tools and Prerequisites:**

Database: MySQL Server (Version 8.0 or later)

SQL Client: MySQL Workbench or any standard command-line or GUI-based SQL client.

Data File: Superstore_sales.csv must be downloaded and available.


**4. Database Setup and Data Loading:**

This project utilizes the LOAD DATA INFILE command in MySQL for efficient data ingestion. The following steps detail the entire process from database creation to successful data loading.

Step 4.1: Create the Database
In your MySQL client, create a new database to house the project data (e.g., sales_db) and select it for use.

Step 4.2: Create the Destination Table
Define and create a new table named superstore. The table schema must match the columns present in the CSV file. Assign appropriate data types to each column, such as DATE for date fields, DECIMAL for financial data, INT for quantities, and VARCHAR or TEXT for string data.

Step 4.3: Prepare for Data Loading
For security reasons, MySQL only loads files from a specific trusted directory. First, identify this directory by running a command to show the secure_file_priv variable. Then, move the Superstore_sales.csv file into that specific folder.

Step 4.4: Load the Data
Execute the LOAD DATA INFILE command to ingest the CSV data into the superstore table. Configure the command with the following options:

Specify the correct character set of the source file (e.g., latin1) to prevent encoding errors.

Define the field and line terminators (e.g., comma and newline).

Include the option to ignore the first row to skip the CSV header.

Load the date columns into temporary user variables.

Use the SET clause along with the STR_TO_DATE() function to convert the date strings from the source format (DD-MM-YYYY) into MySQL's standard DATE format before inserting them into the table.


**5. SQL Analysis Scripts:**

5.1: Basic Monthly Trend Analysis
To perform the core analysis, execute a SQL query that groups the data by month. This query should:

Extract the year and month from the Order Date column.

Calculate the total monthly revenue by applying the SUM() function to the Sales column.

Calculate the total number of unique orders per month using COUNT(DISTINCT ...) on the Order ID column.

Use GROUP BY to aggregate the results for each year and month.

Use ORDER BY to sort the results chronologically.

5.2: Detailed Monthly Performance Analysis
For a more in-depth view, run a second, more advanced query. This script should build upon the basic analysis by also calculating:

The average sale value using the AVG() function.

The total quantity of all items sold using SUM() on the quantity column.

The number of unique products sold each month with COUNT(DISTINCT ...) on the product ID.

The value of the highest single sale for the month using MAX().

A cumulative, or running, total of revenue across all months by using a SUM() OVER (...) window function.


**6. Findings and Interpretation:**

The execution of the analysis scripts produces a summarized monthly report. This report enables an analyst to:

Identify Seasonality: Determine which months consistently have the highest or lowest sales.

Track Growth: Monitor the change in total revenue and order volume over time. The cumulative revenue column is especially useful for visualizing the overall growth trajectory of the business.

Analyze Customer Behavior: Observe trends in the average sale value to see if customers are spending more or less per transaction over time.

Monitor Product Volume: Use the total items sold and unique products sold to understand if growth is driven by selling more items or a wider variety of items.








