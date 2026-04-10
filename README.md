This project analyzes customer support operations using SQL. The dataset contains customer information, branch details, employee records, and support query logs. The goal is to extract meaningful business insights that help improve customer experience, optimize employee performance, and enhance operational efficiency.

The analysis focuses on customer distribution, support query trends, employee workload, branch performance, and service efficiency.

## Dataset Description

The dataset includes the following fields:

- customer_id (int)
- firstname (text)
- lastname (text)
- email_address (text)
- contact (text)
- branch_id (int)
- branch_latitude (double)
- branch_longitude (double)
- account_id (int)
- branch_city (text)
- branch_state (text)
- support_query_id (int)
- support_query_type (text)
- support_query_category (int)
- support_representative_id (int)
- call_duration (int)
- employee_id (int)
- employee_name (text)
- week_number (int)
- support_query_time_in_days (int)


## Objective

The objective of this project is to use SQL to answer key business questions related to:

- Customer distribution and engagement
- Support query patterns and categories
- Employee workload and performance
- Branch-level operational efficiency
- Time-based trends in customer support activity

## Business Problem Statements
 
**Customer Analysis**
- How many customers are using the services across different countries, states, and cities?
- What is the distribution of customers across states and cities?
- How many customers have raised more than 3 support queries?
- What is the average number of support queries per customer?

**Support Query Analysis**
- What are the different types of support queries?
- What are the different categories of support queries and their counts?
- Which category of support queries is most frequently logged?
- Which support queries have a call duration greater than 8 minutes?
- How many support queries have been in progress for more than 3 days?
- What is the total call duration across all support interactions?

**Branch Performance Analysis**

- Which city and state report the highest number of support queries?
- Is there any specific branch where more queries are logged?
- Which branch reports more queries related to Home Loan services?
- What is the distribution of support queries across branches?

**Employee Performance Analysis**

- How many support representatives are currently employed?
- What is the total call duration handled by each employee?
- How many support queries has each employee answered?
- Which employees are working overtime assuming 8 hours as expected working time?
- Which employees handle the highest number of support queries?

**Time-Based Analysis**

- How do support queries vary across different weeks?
- Which week has the highest number of support queries?
- What is the trend of support query resolution time over time?

## Tools Used
- MySQL
    - SQL (Joins, Aggregations, Subqueries, Group By, Having)
 
## Key Insights (Expected Outcomes)

This analysis helps identify:

- High demand regions and branches
- Customers with frequent support interactions
- Employee workload distribution and overtime patterns
- Common and critical support query types
- Operational inefficiencies in support handling

## How to Use This Project

- Import the dataset into MySQL
- Run SQL scripts in the /sql folder
- Review outputs for each business question
- Document insights based on results

## Suggested Project Structure

- customer-support-sql-project/

README.md /sql 01_data_cleaning.sql 02_analysis.sql 03_business_questions.sql /outputs /insights

## Author Notes

This project is designed to simulate a real-world customer support analytics system. It demonstrates SQL skills including data exploration, aggregation, filtering, and business-driven analysis.

## Next Steps (Recommended Enhancements)

- Add window functions for ranking employees and customers
- Build KPI dashboards using Power BI or Tableau
- Introduce CTEs for modular SQL queries
- Perform cohort analysis on customers

## Final Note

This project focuses on turning raw support data into actionable business insights using SQL.
