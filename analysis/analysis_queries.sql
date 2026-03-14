-- Task 1: Customer Revenue Analysis
SELECT c.customer_id,
       c.name,
       SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- Task 2: Top 5 Customers by Spending
SELECT c.customer_id,
       c.name,
       SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spent DESC
LIMIT 5;


-- Task 3: Customers With No Orders
SELECT c.customer_id,
       c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;


-- Task 4: Best Selling Products
SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC;


-- Task 5: Monthly Revenue
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       SUM(amount) AS total_revenue
FROM orders
GROUP BY month
ORDER BY month;


-- Task 6: Latest Order Per Customer
SELECT customer_id,
       order_date,
       amount
FROM (
    SELECT customer_id,
           order_date,
           amount,
           DENSE_RANK() OVER (
               PARTITION BY customer_id
               ORDER BY order_date DESC
           ) AS rnk
    FROM orders
) t
WHERE rnk = 1;


-- Task 7: Running Revenue
SELECT order_date,
       SUM(amount) OVER (ORDER BY order_date) AS running_revenue
FROM orders;


-- Task 8: Repeat Customers
SELECT c.customer_id,
       c.name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) > 1;


-- Task 9: City-wise Revenue
SELECT c.city,
       SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;


-- Task 10: Top Product Per City
SELECT city,
       product_name,
       total_qty
FROM (
    SELECT c.city,
           p.product_name,
           SUM(oi.quantity) AS total_qty,
           DENSE_RANK() OVER (
               PARTITION BY c.city
               ORDER BY SUM(oi.quantity) DESC
           ) AS rnk
    FROM customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    JOIN order_items oi
    ON o.order_id = oi.order_id
    JOIN products p
    ON oi.product_id = p.product_id
    GROUP BY c.city, p.product_id, p.product_name
) t
WHERE rnk = 1
ORDER BY city;
