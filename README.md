# 🍕 Pizza Sales Analysis using MySQL

## 📌 Project Overview

This project focuses on analysing pizza sales data using MySQL to understand customer purchasing behaviour and overall business performance.

The analysis uses SQL queries to explore pizza categories, pricing, order patterns, sales quantities, order values, revenue performance, best-selling pizzas, and least-ordered pizzas.

The project demonstrates the practical application of MySQL and SQL for extracting meaningful insights from relational sales data and supporting data-driven business decisions.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyse pizza sales data using MySQL.
- Explore different pizza categories and product information.
- Identify missing or incomplete data.
- Analyse pizza pricing and available sizes.
- Examine customer ordering patterns by date and time.
- Calculate total pizza quantities sold.
- Calculate the average pizza price.
- Calculate the total value of individual orders.
- Analyse total quantities sold by pizza category.
- Identify pizzas that were never ordered.
- Identify the pizza category generating the highest revenue.
- Find the top 5 best-selling pizzas.
- Identify the 5 least-ordered pizzas.

---

## 🛠️ Tools & Technologies

- **MySQL**
- **SQL**
- **CSV / Excel** for dataset files
- **GitHub** for project documentation and portfolio presentation

---

## 📂 Dataset Overview

The project uses four relational tables:

### 1. `orders`

Contains information about customer orders.

**Columns:**
- `order_id`
- `order_date`
- `order_time`

### 2. `order_details`

Contains information about the pizzas included in each order.

**Columns:**
- `order_detail_id`
- `order_id`
- `pizza_id`
- `quantity`

### 3. `pizzas`

Contains information about pizza sizes, types, and prices.

**Columns:**
- `pizza_id`
- `pizza_type_id`
- `size`
- `price`

### 4. `pizza_types`

Contains information about pizza names, categories, and ingredients.

**Columns:**
- `pizza_type_id`
- `name`
- `category`
- `ingredients`

---

## 🔍 SQL Analysis Performed

The project includes SQL queries covering the following analysis:

1. Find all unique pizza categories.
2. Display pizza type ID, pizza name, and ingredients while replacing missing ingredients with `MISSING DATA` using `COALESCE()`.
3. Check for pizzas with missing prices.
4. Find orders placed on `2015-01-01`.
5. List pizzas in descending order of price.
6. Identify pizzas available in sizes `L` or `XL`.
7. Find orders placed on `2015-02-15` or orders placed after `8 PM`.
8. Calculate the total quantity of pizzas sold.
9. Calculate the average pizza price.
10. Calculate the total value of each order using pizza price and quantity.
11. Calculate the total quantity sold for each pizza category.
12. Identify pizzas that were never ordered.
13. Identify the pizza category generating the highest revenue.
14. Find the top 5 best-selling pizzas based on total quantity sold.
15. Find the 5 least-ordered pizzas based on total quantity sold.

---

## 📊 Key Insights

Based on the analysis performed in the project:

- The dataset contains four major pizza categories: **Chicken, Classic, Supreme, and Veggie**.
- The **Greek XXL** is identified as the highest-priced pizza in the analysis, with a price of **$35.95**.
- The price validation query returned no pizzas with a `NULL` price, indicating that the analysed pizza pricing records contain no missing prices.
- The `COALESCE()` function was used to replace missing ingredient information with `MISSING DATA`.
- The total quantity of pizzas sold across the available order details is **49,574 units**.
- The **Classic Deluxe Pizza** is identified as the best-selling pizza, with **2,453 units sold**.
- The other pizzas appearing among the top five best-selling pizzas are **Barbecue Chicken, Hawaiian, Pepperoni, and Thai Chicken**.
- The **Classic** category generated the highest revenue among the categories analysed, with approximately **$220,053.10**.
- The **Brie Carre Pizza** appears among the five least-ordered pizzas, with **490 units sold** in the analysis.
- The order-value analysis calculates the monetary value of individual orders by combining pizza prices with the quantities ordered.

---

## 💡 Business Recommendations

The analysis can help a pizza business make data-driven decisions in the following areas:

- Focus on high-performing pizza categories and best-selling products.
- Maintain sufficient inventory for pizzas with strong customer demand.
- Review the pricing, promotion, or customer appeal of pizzas with comparatively lower sales.
- Use order date and time analysis to better understand customer ordering patterns.
- Consider customer preferences for larger pizza sizes such as `L` and `XL`.
- Use order-value analysis to understand the monetary contribution of individual customer orders.
- Use revenue analysis to support menu planning and business decision-making.

---

## 📁 Project Files

The repository contains the following project files:

- `pizza_sales_analysis.sql` — MySQL database creation and SQL analysis queries.
- `orders.csv` — Orders dataset.
- `order_details.csv` — Order details dataset.
- `pizza_types.csv` — Pizza type information.
- `pizzas.xlsx` — Pizza information including size and price.
- `pizza sales project.pptx` — Project presentation containing SQL queries, results, and key insights.

---

## 🚀 How to Use This Project

### Step 1: Create the Database

Open MySQL Workbench or another MySQL environment.

Run the database creation and table creation queries available in:

`pizza_sales_analysis.sql`

### Step 2: Import the Dataset

Import the available dataset files into the corresponding MySQL tables:

- `orders.csv` → `orders`
- `order_details.csv` → `order_details`
- `pizza_types.csv` → `pizza_types`
- `pizzas.xlsx` → `pizzas`

### Step 3: Run the SQL Analysis

Execute the SQL queries in `pizza_sales_analysis.sql` to reproduce the analysis and explore the pizza sales data.

---

## 📌 Project Outcome

This project demonstrates the use of MySQL and SQL to analyse relational sales data and generate useful business insights.

The analysis provides an understanding of product performance, pizza categories, pricing, sales quantities, order values, revenue contribution, and ordering patterns.

These insights can support business decisions related to menu planning, inventory management, pricing, promotions, and customer demand.

---

## 👩‍💻 Author

**Harshita**

Data Analytics Project | MySQL | SQL
