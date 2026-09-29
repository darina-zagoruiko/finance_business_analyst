# Financial Performance & Sales Analysis

## Business Problem

A retail company needs to understand its sales and financial performance across products, customer segments and geographic regions.

The purpose of this project is to analyse sales and profitability data and identify factors that may affect business performance.

## Objectives

The main objectives of the analysis are to:

* evaluate overall sales and profitability;
* identify the best- and worst-performing product categories;
* analyse sales and profit by region and customer segment;
* examine the relationship between discounts and profitability;
* identify sales trends over time;
* provide data-driven recommendations for business decision-making.

## Dataset

The project uses the **Superstore** dataset.

The dataset contains:

* **9,994 order lines**
* **5,009 unique orders**
* Order and shipping dates
* Customer information
* Product information
* Sales
* Quantity
* Discount
* Profit
* Geographic information

## Data Preparation

The dataset was imported into PostgreSQL and initially stored in a staging table called `orders_raw`.

Data quality checks included:

* missing values;
* duplicate records;
* unique identifiers;
* date validity;
* numerical values;
* categorical consistency.

No critical data quality issues were identified.

A cleaned analytical table called `orders` was created with appropriate PostgreSQL data types.

Detailed checks are documented in:

`documentation/01_data_quality_assessment.md`

## SQL Analysis

SQL was used to analyse sales performance, profitability, discounts, product categories, and regional performance.

The analysis included:

- Sales and profit KPIs
- Sales performance by category and region
- Profitability by discount level
- Category × discount analysis
- Identification of loss-making discount levels
- Comparison of order volume and profitability

## Power BI Dashboard

*To be completed.*

The final dashboard will present key financial and sales KPIs and allow users to explore performance by time, category, region and customer segment.

## Key Insights

*To be completed after the SQL and Power BI analysis.*

## Recommendations

*To be completed after identifying the key business findings.*

## Tools

* PostgreSQL
* SQL
* Power BI
* Excel
* Git / GitHub

