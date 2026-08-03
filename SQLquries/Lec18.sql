-- ===========================================================
-- DAY_18_SQL_WINDOW_FUNCTIONS_COMPLETE.sql
-- PART 1 : Introduction + Dataset + OVER() + PARTITION BY
--           ORDER BY + ROW_NUMBER() + RANK() + DENSE_RANK()
-- Compatible with: MySQL 8.0+
-- ===========================================================

/*
WINDOW FUNCTIONS
----------------
A Window Function performs calculations across a set of rows without collapsing them like GROUP BY.

Syntax:
FUNCTION_NAME(...) OVER(
    [PARTITION BY column]
    [ORDER BY column]
)

Dataset: E-Commerce Analytics
*/

DROP DATABASE IF EXISTS ecommerce_window_demo;
CREATE DATABASE ecommerce_window_demo;
USE ecommerce_window_demo;

-- ==========================
-- TABLES
-- ==========================

CREATE TABLE categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY(category_id) REFERENCES categories(category_id)
);

CREATE TABLE salespersons(
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    region VARCHAR(30)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    order_date DATE,
    salesperson_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY(salesperson_id) REFERENCES salespersons(salesperson_id),
    FOREIGN KEY(product_id) REFERENCES products(product_id)
);

-- ==========================
-- SAMPLE DATA
-- ==========================

INSERT INTO categories VALUES
(1,'Mobile'),
(2,'Laptop'),
(3,'Electronics'),
(4,'Accessories');

INSERT INTO products VALUES
(101,'iPhone 16',1,85000),
(102,'Galaxy S25',1,78000),
(103,'OnePlus 14',1,52000),
(201,'Dell Inspiron',2,72000),
(202,'HP Pavilion',2,68000),
(301,'Sony Smart TV',3,62000),
(302,'LG OLED TV',3,95000),
(401,'Wireless Earbuds',4,4500),
(402,'Mechanical Keyboard',4,6500),
(403,'Gaming Mouse',4,3200);

INSERT INTO salespersons VALUES
(1,'Rahul','North'),
(2,'Priya','South'),
(3,'Amit','East'),
(4,'Sneha','West');

INSERT INTO orders VALUES
(1001,'2026-01-02',1,101,2),
(1002,'2026-01-02',2,201,1),
(1003,'2026-01-03',3,301,1),
(1004,'2026-01-03',4,102,3),
(1005,'2026-01-05',1,401,10),
(1006,'2026-01-05',2,202,2),
(1007,'2026-01-06',3,302,1),
(1008,'2026-01-06',4,103,4),
(1009,'2026-01-08',1,402,5),
(1010,'2026-01-08',2,403,8),
(1011,'2026-01-09',3,101,1),
(1012,'2026-01-10',4,201,2),
(1013,'2026-01-10',1,301,2),
(1014,'2026-01-11',2,401,12),
(1015,'2026-01-12',3,102,2),
(1016,'2026-01-13',4,302,1);






create view vw_tables as 
select 
o.order_id,  
p.product_name, 
p.unit_price,
o.quantity, 
o.order_date, 
c.category_id, 
c.category_name,
s.salesperson_name,
s.region,
O.quantity*p.unit_price as sales_amount
from orders o 
join products p 
On o.product_id=p.product_id
join categories c
	on p.category_id=c.category_id
join salespersons s
	on o.salesperson_id=s.salesperson_id;




select * from vw_tables;   



select *, sum(sales_amount) over() from vw_tables;


select product_name, category_name, sales_amount, sum(sales_amount) over(partition by category_name) as category_total
from vw_tables;



Ranking windows	functions: ROW_NUMBER(), RANK(), DENSE_RANK(), NTILE()


Analytical Windowns functions: LAG(),LEAD(),



Select salesperson_id, salesperson_name, region,  product_id,sales_amount, avg(sales_amount) over(partition by region)  as avg_sales from vw_tables;






select order_date, sales_amount, sum(sales_amount) over(order by order_date) as running_total
    from vw_tables;




select order_date, sales_amount, sum(sales_amount) over(order by order_date desc) as running_total
    from vw_tables;



 select product_name, sales_amount, rank() over(order by sales_amount desc) as ranks from vw_tables;



select product_name, sales_amount, row_number() over(order by sales_amount desc) as ranks from vw_tables;





select category_name, product_name, sales_amount, row_number() over(partition by category_name order by sales_amount desc) as category_name from vw_tables;



select order_id, order_date, sales_amount, lag(sales_amount) over(partition by salesperson_name order by order_date, order_id) as previous_personal_sale from vw_tables;


















