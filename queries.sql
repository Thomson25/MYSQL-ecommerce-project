CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
email VARCHAR(100),
city VARCHAR(50)
);
INSERT INTO customers (name,email,city) VALUES
('Rahul','rahul@gmail.com','Chennai'),
('Priya','priya@gmail.com','Bangalore'),
('Arun','arun@gmail.com','Mumbai');

CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL(10,2)
);
INSERT INTO products (product_name,category,price) VALUES
('Laptop','Electronics',55000),
('Phone','Electronics',25000),
('Shoes','Fashion',3000);

CREATE TABLE orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
product_id INT,
quantity INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO orders (customer_id,product_id,quantity,order_date) VALUES
(1,1,1,'2026-04-01'),
(2,2,2,'2026-04-03'),
(3,3,3,'2026-04-05'),
(1,2,1,'2026-04-07');


select * from orders;
SELECT customer, SUM(amount) AS total_sales
FROM orders
GROUP BY customer;
