# Practice sales analysis using MySQL and Power BI

# Project Overview
This project focused on an analysis of a company's financial performance and sales data. The dataset contained logical inconsistencies regarding the total sales revenue, which I successfully identified and resolved during the data-cleaning stage. The goal of this analysis was to uncover key business insights regarding profitability, product category performance and regional sales distribution

## Tools Used
* **SQL (MySQL)** Data cleaning, verification, and analytical querying, utilizing Window Functions and CTEs
* **Power BI** Data transformation via Power Query and creating an interactive executive dashboard using DAX 

# Key Insights 
**Total Revenue** 70.33M PLN
**Gross Profit** 6.49M PLN
**Gross Profit Margin** 9.22%

### Product Performance:
**Electronics** proved to be the most efficient category with the highest Gross Profit Margin of 9.93%
**Furniture** drove the highest volume, generating the most revenue 18.22M PLN and nominal profit 1.71M PLN
**Clothing** was identified as an underperforming area, showing the lowest margin 8.53% despite high revenue.

### Regional & Team Performance:
Using SQL Window Functions, I established top-performing sales representatives per region.
**Bob** demonstrated outstanding performance, claiming the #1 spot in two regions simultaneously North & West
**Alice** achieved the single highest local profit in the East region 483k PLN

## SQL Queries Showcase
The full code is available in the `sales_analysis.sql` file. It includes concepts such as:
* Business-logic calculations for Gross Profit and Margins
* `DENSE_RANK() OVER (PARTITION BY Region ORDER BY ...)` to analyze sales team performance per territory

## Dashboard screenshot from POWER BI
<img width="894" height="368" alt="image" src="https://github.com/user-attachments/assets/038a01ad-cecf-412c-980f-b1a4664e298a" />

