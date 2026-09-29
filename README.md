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

## Tableau Dashboard

An interactive Tableau dashboard was created to visualise sales and profitability performance.

The dashboard includes:

* Sales and profit analysis
* Profitability by discount level
* Category performance
* Regional performance
* Interactive filters for exploring the results

[Sales & Profit Performance Analysis (click me)](https://public.tableau.com/app/profile/darina.zagoruiko/viz/SalesProfitPerformanceAnalysis_17904320658260/Dashboard1)

![abc](screenshots\sales_and_profit_performance_analysis.png)

## Key Insights

* Higher discount levels were associated with significantly lower profitability.
* Discounts of approximately 35–60% resulted in an average loss of about $245 per order.
* The Central region showed negative overall profitability and requires further investigation.
* Technology was one of the strongest-performing categories, generating high profit despite a lower number of orders.
* Furniture showed higher discount levels and weaker profitability compared with other categories.

## Recommendations

- Review the discount strategy, particularly discounts above 30%, as higher discount levels are associated with significant losses.
- Investigate the causes of negative profitability in the Central region.
- Review pricing and discount policies for the Furniture category to improve margins.
- Focus on profitable categories such as Technology while monitoring sales volume and margins.
- Consider alternatives to large discounts, such as bundles, loyalty offers, or targeted promotions.

## Tools


- PostgreSQL
- SQL
- Excel
- Tableau

