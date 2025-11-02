# Apple-Store-Database
# Apple Store Database Management System (MySQL Project)

## Overview
This project is a **MySQL-based Apple Store Database Management System** designed to manage data related to customers, products, orders, and suppliers. It demonstrates how SQL can be used for real-world data management, relationships, and analytics.

## Objectives
- Build a structured relational database for an Apple Store.
- Demonstrate SQL concepts: Joins, Subqueries, and Views.
- Generate insights such as top customers, total revenue, and low-stock products.

## Database Design
**Tables Used:**
- `Customers` – Customer details (name, city, contact)
- `Products` – Product info (name, category, price, stock)
- `Orders` – Purchase transactions
- `Order_Items` – Link between orders and products
- `Suppliers` – Supplier details for Apple products

##  Key SQL Features
- ✅ Inner, Left, and Self Joins  
- ✅ Subqueries and Aggregate Functions  
- ✅ Views for reports (Top Customers, Category Revenue, etc.)  
- ✅ Foreign Keys for relational integrity  
- ✅ Sample data insertion and analysis queries  

##  Example Insights
- Top 5 customers by total spending  
- Products below average price  
- Orders containing iPhone 15 Pro  
- Low-stock items and supplier mapping  

##  Skills Demonstrated
- MySQL Database Design  
- SQL Query Optimization  
- Joins, Subqueries, Views  
- Data Normalization & Analysis  
- Business Reporting using SQL  

##  Tools Used
- MySQL  
- MySQL Workbench / phpMyAdmin  
- SQL Language  

##  Files Included
- `apple_store.sql` → Full SQL database script  
- `README.md` → Documentation file  

---

### 🏁 Output Example
```sql
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 3;
