# sql-sales-data-analysis
SQL Sales Data Analysis Project – customer insights, revenue analysis, and product performance using SQL queries.

* Sales Data Analysis Using SQL
  > Project Overview

This project performs sales data analysis using SQL to generate business insights from customer orders and product sales.
The analysis focuses on identifying top customers, best-selling products, revenue trends, and customer purchasing behavior using SQL queries.

The project simulates real-world data analyst tasks performed in business reporting and decision-making.

> Project Objectives

*The main objectives of this project are:

--> Analyze customer spending behavior

--> Identify top customers and inactive customers

--> Determine best-selling products

--> Track monthly revenue trends

--> Identify repeat customers

--> Analyze city-wise revenue contribution

> Database Structure

*The project uses the following relational tables:

--> Customers
--> Column	Description
--> customer_id	Unique customer identifier
--> name	Customer name
--> city	Customer location
--> Orders
--> Column	Description
--> order_id	Unique order identifier
--> customer_id	Customer placing the order
--> order_date	Date of the order
--> amount	Total order value
--> Products
--> Column	Description
--> product_id	Unique product identifier
--> product_name	Product name
--> price	Product price
--> Order Items
--> Column	Description
--> order_id	Order reference
--> product_id	Product reference
--> quantity	Quantity purchased

🔍 Key SQL Analysis Tasks
1️⃣ Customer Revenue Analysis
Calculate the total spending of each customer.

2️⃣ Top Customers
Identify the top 5 customers based on total spending.

3️⃣ Inactive Customers
Find customers who have never placed an order.

4️⃣ Best Selling Products
Identify products with the highest quantity sold.

5️⃣ Monthly Revenue Analysis
Track revenue generated each month.

6️⃣ Latest Order Per Customer
Identify each customer's most recent purchase.

7️⃣ Running Revenue
Calculate cumulative sales revenue over time.

8️⃣ Repeat Customers
Identify customers who placed multiple orders.

9️⃣ City-wise Revenue
Analyze revenue generated from each city.

🔟 Top Product Per City
Find the most popular product in each city.

🛠 SQL Skills Demonstrated

*This project demonstrates the following SQL skills:

--> JOIN and LEFT JOIN

--> GROUP BY and HAVING

--> Aggregation Functions (SUM, COUNT)

--> Window Functions (DENSE_RANK, SUM OVER)

--> Subqueries

--> Date Functions

*Data Analysis Queries

📈 Business Insights Generated

--> Using SQL queries, this project helps businesses understand:

--> Which customers generate the most revenue

--> Which products sell the most

--> How revenue changes over time

--> Which cities contribute the most sales

--> Customer purchasing patterns

💻 Tools Used

--> MySQL

--> SQL

--> GitHub

📂 Project Structure
sql-sales-data-analysis
│
├── database
│   ├── create_tables.sql
│
├── analysis
│   ├── customer_analysis.sql
│   ├── product_analysis.sql
│   ├── revenue_analysis.sql
│
└── README.md

> Key Learning Outcomes

* Through this project, I improved my ability to:

--> Write complex SQL queries

--> Perform real-world business data analysis
 
--> Use window functions and aggregations

--> Generate meaningful insights from relational databases

👨‍💻 Author

Santhosh S
SQL Enthusiast | Aspiring Data Analyst

⭐ Why This Project Matters

This project demonstrates how SQL can be used to solve real-world business problems and generate actionable insights from structured data.
