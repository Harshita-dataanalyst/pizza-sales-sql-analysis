create database pizza;
use pizza;
create table orders (
    order_id INT PRIMARY key,
    order_date DATE ,
    order_time TIME);
     
create table pizzas(
   pizza_id VARCHAR(80),
   pizza_type_id VARCHAR(70),
   size VARCHAR(60),
   price FLOAT);
   
   
create table pizza_types (
   pizza_type_id VARCHAR(30),
   name VARCHAR(50),
   category VARCHAR(40),
   ingredients VARCHAR(100));
   
create table order_details (
   order_detail_id INT,
   order_id INT,
   pizza_id VARCHAR(40),
   quantity INT);
   
#============================================================
#Q1
SELECT DISTINCT
    category
FROM
    pizza_types;
#============================================================
#Q2
SELECT 
    pizza_type_id,
    name,
    COALESCE(ingredients, 'MISSING DATA') AS ingredients
FROM
    pizza_types
LIMIT 5;
#=============================================================
#Q3
SELECT 
    *
FROM
    pizzas
WHERE
    price IS NULL;
#=============================================================
#Q4
SELECT 
    *
FROM
    orders
WHERE
    order_date = '2015-01-01'
#=============================================================
#Q5
SELECT 
    *
FROM
    pizzas
ORDER BY price DESC;
#=============================================================
#Q6
SELECT 
    *
FROM
    pizzas
WHERE
    size = 'L' OR size = 'XL';
#=============================================================
#Q7
SELECT 
    *
FROM
    orders
WHERE
    order_date = '2015-02-15'
        OR order_time > '20:00:00';
#=================================================================
#Q8
SELECT 
    SUM(quantity)
FROM
    order_details;
#===================================================================
#Q9
SELECT 
    AVG(price)
FROM
    pizzas;
#===============================================================
#Q10
SELECT 
    o.order_id, SUM(p.price * od.quantity) AS total_value
FROM
    orders AS o
        JOIN
    order_details as od ON o.order_id = od.order_id
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
GROUP BY o.order_id;
#==================================================================
#Q11
SELECT 
    pt.category, SUM(od.quantity) AS total_quantity
FROM
    pizza_types AS pt
        JOIN
    pizzas AS p ON pt.pizza_type_id = p.pizza_type_id
        JOIN
    order_details AS od ON p.pizza_id = od.pizza_id
GROUP BY pt.category;
#=================================================================
#Q12
SELECT 
    *
FROM
    pizzas AS p
        LEFT JOIN
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
        LEFT JOIN
    order_details AS od ON p.pizza_id = od.pizza_id
WHERE
    od.order_id IS NULL;
#=================================================================
#Q13
SELECT 
    pt.category, SUM(p.price * od.quantity) AS total_revenue
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_revenue DESC
LIMIT 1;
#====================================================================
#Q14
SELECT 
    pt.name, SUM(od.quantity) AS total_sold
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold DESC
LIMIT 5;
#=================================================================
#Q15
SELECT 
    pt.name, SUM(od.quantity) AS total_sold
FROM
    order_details AS od
        JOIN
    pizzas AS p ON od.pizza_id = p.pizza_id
        JOIN
    pizza_types as pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold ASC
LIMIT 5;
#===================================================================















