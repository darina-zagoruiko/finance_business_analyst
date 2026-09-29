# Data Quality Assessment

## Overview

The Superstore dataset contains **9,994 order lines** and **5,009 unique orders**.

The data was imported into PostgreSQL and assessed before business analysis.

## Quality Checks

| Check                  | Result                      | Status        |
| ---------------------- | --------------------------- | ------------- |
| Total records          | 9,994                       | Pass          |
| Missing values         | None in checked fields      | Pass          |
| Unique Row IDs         | 9,994 / 9,994               | Pass          |
| Unique orders          | 5,009                       | Informational |
| Invalid shipping dates | 0                           | Pass          |
| Shipping time          | 0–7 days, average 3.96 days | Pass          |
| Sales                  | Valid                       | Pass          |
| Quantity               | Valid                       | Pass          |
| Discount               | Valid                       | Pass          |
| Profit                 | Valid                       | Pass          |
| Categorical values     | Consistent                  | Pass          |

## Data Preparation

The original CSV data was preserved in the `orders_raw` staging table.

A separate `orders` table was created with appropriate PostgreSQL data types:

* Dates → `DATE`
* Sales and Profit → `NUMERIC`
* Quantity → `INTEGER`
* Postal Code and Row ID → `INTEGER`

Text fields were cleaned using `TRIM()`.

## Conclusion

No critical data quality issues were identified.

The dataset is ready for the next stage: **SQL Business Analysis and KPI development**.
