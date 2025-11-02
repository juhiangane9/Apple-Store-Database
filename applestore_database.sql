create database apple_store;
use apple_store;

create table products (
product_id int primary key,
name varchar(20), 
category varchar(20),
price int,
stock_quantity int
);
desc products;




create table Customers (
customer_id int primary key,
name varchar(20) not null,
email varchar(20) not null,
phone int not null,
city varchar(20) not null
);
desc customers;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY ,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
desc orders;

create table Order_Items (
order_item_id int primary key,
order_id  int,
product_id int, 
quantity int, 
price int, 
Foreign key  (order_id) references orders (order_id),
Foreign key  (product_id) references products (product_id)
);
desc order_items;

create table Suppliers(
supplier_id int primary key,
supplier_name varchar(50) not null,
contact_number varchar(10) not null,
product_supplied varchar(50) not null
);
desc suppliers;

ALTER TABLE products
ADD supplier_id int,
ADD CONSTRAINT fk_supplier
FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id);


ALTER TABLE Customers MODIFY phone VARCHAR(20);

INSERT INTO Customers (customer_id, name, email, phone, city) VALUES
(1 ,'Rahul Sharma', 'rahul@example.com', '9876543210', 'Mumbai'),
(2 ,'Priya Mehta', 'priya@example.com', '9123456780', 'Delhi'),
(3 ,'Amit Verma', 'amit@example.com', '9988776655', 'Pune'),
(4 ,'Sara Khan', 'sara@example.com', '9871234567', 'Bangalore'),
(5 ,'Rohit Desai', 'rohit@example.com', '9911223344', 'Chennai'),
(6 ,'Neha Gupta', 'neha@example.com', '9812233445', 'Kolkata'),
(7 ,'Karan Patel', 'karan@example.com', '9723456789', 'Ahmedabad'),
(8 ,'Anjali Nair', 'anjali@example.com', '9001122334', 'Hyderabad'),
(9 ,'Arjun Reddy', 'arjun@example.com', '9345678901', 'Hyderabad'),
(10 ,'Sneha Joshi', 'sneha@example.com', '9567890123', 'Pune'),
(11 ,'Vikas Yadav', 'vikas@example.com', '9456789012', 'Lucknow'),
(12 ,'Ritika Shah', 'ritika@example.com', '9321456789', 'Surat'),
(13 ,'Mohit Bansal', 'mohit@example.com', '9234567890', 'Jaipur'),
(14 ,'Ayesha Sheikh', 'ayesha@example.com', '9112233445', 'Mumbai'),
(15 ,'Manish Kumar', 'manish@example.com', '9223344556', 'Delhi'),
(16 ,'Divya Iyer', 'divya@example.com', '9876543000', 'Chennai'),
(17 ,'Siddharth Rao', 'sidrao@example.com', '9765432109', 'Bangalore'),
(18 ,'Payal Jain', 'payal@example.com', '9654321098', 'Indore'),
(19 ,'Kabir Malhotra', 'kabir@example.com', '9543210987', 'Delhi'),
(20 ,'Meera Menon', 'meera@example.com', '9432109876', 'Mumbai');

select * from customers;

INSERT INTO Products (product_id, name, category, price, stock_quantity) VALUES
(1,'iPhone 15 Pro', 'Phone', 125000, 20),
(2,'iPhone 14', 'Phone', 85000, 15),
(3,'iPhone SE', 'Phone', 45000, 30),
(4,'MacBook Air M2', 'Laptop', 105000, 10),
(5,'MacBook Pro M3', 'Laptop', 175000, 8),
(6,'iPad Pro 12.9', 'Tablet', 85000, 12),
(7,'iPad Air', 'Tablet', 60000, 18),
(8,'iPad Mini', 'Tablet', 50000, 20),
(9,'Apple Watch Series 9', 'Watch', 45000, 25),
(10,'Apple Watch Ultra 2', 'Watch', 85000, 10),
(11,'AirPods Pro 2', 'Accessory', 25000, 40),
(12,'AirPods Max', 'Accessory', 60000, 15),
(13,'Magic Mouse', 'Accessory', 8500, 50),
(14,'Magic Keyboard', 'Accessory', 12000, 35),
(15,'Apple Pencil 2', 'Accessory', 9500, 30),
(16,'HomePod Mini', 'Accessory', 10000, 20),
(17,'Apple TV 4K', 'Accessory', 18000, 15),
(18,'iMac 24-inch', 'Desktop', 135000, 7),
(19,'Mac Mini M2', 'Desktop', 75000, 12),
(20,'Studio Display', 'Monitor', 159000, 5);

select * from products;

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2025-09-01', 125000),
(2, 2, '2025-09-02', 105000),
(3, 3,'2025-09-03', 45000),
(4, 4, '2025-09-04', 25000),
(5, 5, '2025-09-05', 85000),
(6, 6, '2025-09-06', 175000),
(7, 7, '2025-09-07', 60000),
(8, 8, '2025-09-08', 10000),
(9, 9, '2025-09-09', 12000),
(10, 10,  '2025-09-10', 9500),
(11, 11,  '2025-09-11', 60000),
(12, 12,  '2025-09-12', 18000),
(13, 13,  '2025-09-13', 135000),
(14, 14, '2025-09-14', 8500),
(15, 15, '2025-09-15', 159000),
(16, 16,  '2025-09-16', 50000),
(17, 17, '2025-09-17', 45000),
(18, 18, '2025-09-18', 75000),
(19, 19, '2025-09-19', 60000),
(20, 20, '2025-09-20', 25000);

select * from orders;

ALTER TABLE order_items 
MODIFY order_item_id INT AUTO_INCREMENT;

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 125000),
(2, 4, 1, 105000),
(3, 9, 1, 45000),
(4, 11, 1, 25000),
(5, 6, 1, 85000),
(6, 5, 1, 175000),
(7, 7, 1, 60000),
(8, 16, 1, 10000),
(9, 14, 1, 12000),
(10, 15, 1, 9500),
(11, 12, 1, 60000),
(12, 17, 1, 18000),
(13, 18, 1, 135000),
(14, 13, 1, 8500),
(15, 20, 1, 159000),
(16, 8, 1, 50000),
(17, 3, 1, 45000),
(18, 19, 1, 75000),
(19, 2, 1, 60000),
(20, 11, 1, 25000);


ALTER TABLE suppliers
MODIFY supplier_id INT AUTO_INCREMENT;

INSERT INTO Suppliers (supplier_name, contact_number, product_supplied) VALUES
('Apple Inc.', '1800-APPLE-01', 'iPhone, MacBook, iPad'),
('Tech Distributors Ltd.', '1800-TECH-22', 'Apple Watch, Accessories'),
('Gadget World Pvt Ltd.', '1800-GAD-333', 'AirPods, Apple TV'),
('FutureTech Solutions', '1800-FTECH-44', 'Magic Mouse, Keyboard'),
('Digital Hub Ltd.', '1800-DHUB-55', 'HomePod, Studio Display'),
('Elite Supplies', '1800-ESUP-66', 'Mac Mini, iMac'),
('SmartTech Importers', '1800-STEC-77', 'Apple Pencil, iPad'),
('NextGen Electronics', '1800-NGEN-88', 'MacBook Pro, MacBook Air'),
('Infinity Gadgets', '1800-IGAD-99', 'Apple Watch Ultra, AirPods Max'),
('Prime Tech Corp', '1800-PTC-11', 'Monitors, Accessories');

ALTER TABLE suppliers MODIFY contact_number VARCHAR(50);

-- sub queries 
-- 1. Find customers who spent more than ₹1,00,000
SELECT name FROM Customers WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders 
    GROUP BY customer_id 
    HAVING SUM(total_amount) > 100000
);

-- 2. Find products that have never been ordered
SELECT name FROM Products WHERE product_id NOT IN (
    SELECT product_id 
    FROM Order_Items
);

-- 3. Find orders with total amount greater than the average order
SELECT order_id, total_amount FROM Orders WHERE total_amount > (
    SELECT AVG(total_amount) FROM Orders
);


-- 4. Find the most expensive product
SELECT name, price FROM Products WHERE price = (
    SELECT MAX(price) FROM Products
);


-- 5. Find customers who bought both iPhone 15 Pro and MacBook Air
SELECT name FROM Customers WHERE customer_id IN (
    SELECT o.customer_id 
    FROM Orders o 
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE oi.product_id = 1  -- iPhone 15 Pro
) 
AND customer_id IN (
    SELECT o.customer_id 
    FROM Orders o 
    JOIN Order_Items oi ON o.order_id = oi.order_id
    WHERE oi.product_id = 4  -- MacBook Air
);


-- 6. Find the second most expensive product
SELECT name, price FROM Products WHERE price = (
    SELECT MAX(price) 
    FROM Products 
    WHERE price < (SELECT MAX(price) FROM Products)
);


-- 7. Find orders placed by the customer who spent the most
SELECT order_id, total_amount FROM Orders 
WHERE customer_id = (
    SELECT customer_id 
    FROM Orders 
    GROUP BY customer_id 
    ORDER BY SUM(total_amount) DESC 
    LIMIT 1
);


-- 8. Find customers who placed orders after 2025-09-10
SELECT name FROM Customers WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders 
    WHERE order_date > '2025-09-10'
);


-- 9. Find products cheaper than the average price of all products
SELECT name, price FROM Products WHERE price < (
    SELECT AVG(price) FROM Products
);


-- 10. Find suppliers who supply products costing more than ₹1,00,000
SELECT supplier_name FROM Suppliers WHERE product_supplied IN (
    SELECT name 
    FROM Products 
    WHERE price > 100000
);

-- joins 

-- 1. List all orders with customer names (INNER JOIN)
SELECT o.order_id, c.name AS customer_name, o.total_amount FROM Orders o INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- 2. List all orders with customer name and product names
SELECT o.order_id, c.name AS customer_name, p.name AS product_name, oi.quantity, oi.price FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
INNER JOIN Products p ON oi.product_id = p.product_id;

-- 3. List all products and total quantity sold (LEFT JOIN)
SELECT p.name, COALESCE(SUM(oi.quantity), 0) AS total_sold
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name;

-- 4. List products with stock less than 10 or sold out
SELECT p.name, p.stock_quantity, COALESCE(SUM(oi.quantity),0) AS sold_quantity FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name, p.stock_quantity
HAVING p.stock_quantity - COALESCE(SUM(oi.quantity),0) < 10;

-- 5. Find top 3 customers by total spent
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;

-- 6. List orders with supplier name for each product
SELECT o.order_id, p.name AS product_name, s.supplier_name
FROM Orders o
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
INNER JOIN Products p ON oi.product_id = p.product_id
INNER JOIN Suppliers s ON FIND_IN_SET(p.name, s.product_supplied);

-- 7. List products and number of customers who bought them
SELECT p.name, COUNT(DISTINCT o.customer_id) AS customers_count
FROM Products p
INNER JOIN Order_Items oi ON p.product_id = oi.product_id
INNER JOIN Orders o ON oi.order_id = o.order_id
GROUP BY p.name;

-- 8. Self-join example: Find customers who live in the same city
SELECT c1.name AS customer1, c2.name AS customer2, c1.city
FROM Customers c1
INNER JOIN Customers c2 ON c1.city = c2.city AND c1.customer_id < c2.customer_id;

-- 9. Find orders with total amount greater than the average (JOIN + subquery)
SELECT o.order_id, c.name, o.total_amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.total_amount > (SELECT AVG(total_amount) FROM Orders);

-- 10. Find total revenue by product category
SELECT p.category, SUM(oi.price) AS revenue
FROM Products p
INNER JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.category;

-- views 

-- 1. View: All orders with customer name
CREATE VIEW vw_orders_with_customers AS
SELECT o.order_id, c.name AS customer_name, o.order_date, o.total_amount
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;
SELECT * FROM vw_orders_with_customers;

-- 2.View: Supplier-wise products
CREATE VIEW vw_supplier_products AS
SELECT s.supplier_name, p.name AS product_name
FROM Suppliers s
JOIN Products p ON FIND_IN_SET(p.name, s.product_supplied);
SELECT * FROM vw_supplier_products;

-- 3. View: Products and total quantity sold
CREATE VIEW vw_product_sales AS
SELECT p.name AS product_name, SUM(oi.quantity) AS total_sold
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name;
SELECT * FROM vw_product_sales;

-- 4. View: Top 5 customers by total spending
CREATE VIEW vw_top_customers AS
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
SELECT * FROM vw_top_customers;

-- 5. View: Orders with product details
CREATE VIEW vw_order_details AS
SELECT o.order_id, c.name AS customer_name, p.name AS product_name, oi.quantity, oi.price
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
INNER JOIN Products p ON oi.product_id = p.product_id;
SELECT * FROM vw_order_details;

-- 6. View: Products that are low in stock (less than 10)
CREATE VIEW vw_low_stock_products AS
SELECT name, stock_quantity
FROM Products
WHERE stock_quantity < 10;
SELECT * FROM vw_low_stock_products;

-- 7. View: Total revenue by product category
CREATE VIEW vw_category_revenue AS
SELECT p.category, SUM(oi.price) AS total_revenue
FROM Products p
INNER JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.category;
SELECT * FROM vw_category_revenue;

-- 8. View: Customers with more than 1 order
CREATE VIEW vw_repeat_customers AS
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;
SELECT * FROM vw_repeat_customers;

-- 9. View: Orders containing “iPhone 15 Pro”
CREATE VIEW vw_iphone_orders AS
SELECT o.order_id, c.name AS customer_name, oi.quantity, oi.price
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
WHERE oi.product_id = 1;
SELECT * FROM vw_iphone_orders;

-- 10. View: Remaining stock after sales
CREATE VIEW vw_remaining_stock AS
SELECT p.name, p.stock_quantity - COALESCE(SUM(oi.quantity),0) AS remaining_stock
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.name, p.stock_quantity;
SELECT * FROM vw_remaining_stock;








