-- Insert customers
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Arun', 'Chennai'),
(2, 'Bala', 'Bangalore'),
(3, 'Chitra', 'Delhi'),
(4, 'David', 'Mumbai'),
(5, 'Esha', 'Chennai');

-- Insert orders
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-10', 500),
(102, 1, '2024-02-15', 700),
(103, 2, '2024-03-01', 900),
(104, 3, '2024-02-20', 600),
(105, 4, '2024-03-10', 1200),
(106, 2, '2024-03-15', 400);

-- Insert products
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 50000),
(2, 'Phone', 20000),
(3, 'Headphones', 2000),
(4, 'Tablet', 15000);

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(101, 1, 1),
(101, 3, 2),
(102, 2, 1),
(103, 1, 1),
(104, 4, 1),
(105, 2, 2),
(106, 3, 3);
