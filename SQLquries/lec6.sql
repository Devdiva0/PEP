create database normalization_lab;


use normalization_lab;


create table OrderDats
(
OrderID int, 
customerName varchar(50), 
phone varchar(15), 
address varchar(100), 
productName varchar(50), 
category varchar(30), 
supplierName varchar(50), 
supplierPhone varchar(15), 
Quantity int, 
price decimal(10,2)
);


INSERT INTO OrderDats
(OrderID, customerName, phone, address, productName, category, supplierName, supplierPhone, Quantity, price)
VALUES
(101, 'Rahul Sharma', '9876543210', 'Delhi', 'Laptop', 'Electronics', 'TechWorld', '9811111111', 2, 65000.00),

(102, 'Priya Singh', '9876501234', 'Mumbai', 'Headphones', 'Electronics', 'SoundHub', '9822222222', 1, 2500.00),

(103, 'Aman Verma', '9812345678', 'Pune', 'Office Chair', 'Furniture', 'FurniMart', '9833333333', 3, 4500.00),

(104, 'Neha Gupta', '9123456780', 'Jaipur', 'Notebook', 'Stationery', 'PaperHouse', '9844444444', 10, 120.00),

(105, 'Karan Mehta', '9988776655', 'Chandigarh', 'Water Bottle', 'Accessories', 'DailyNeeds', '9855555555', 5, 350.00);


select * from OrderDats;

rename table OrderDats to OrderData;




INSERT INTO OrderData
VALUES

(106, 'Anjali Kapoor', '9765432101', 'Lucknow', 'Mouse', 'Electronics', 'TechWorld', '9811111111', 2, 800.00),

(107, 'Rohit Kumar', '9876123456', 'Bhopal', 'Keyboard', 'Electronics', 'TechWorld', '9811111111', 1, 1500.00),

(108, 'Sneha Reddy', '9988123456', 'Hyderabad', 'Study Table', 'Furniture', 'FurniMart', '9833333333', 1, 6500.00),

(109, 'Vikas Yadav', '9012345678', 'Kanpur', 'Pen Pack', 'Stationery', 'PaperHouse', '9844444444', 20, 250.00),

(110, 'Pooja Sharma', '9123456789', 'Noida', 'Water Bottle', 'Accessories', 'DailyNeeds', '9855555555', 3, 350.00),

(111, 'Aditya Jain', '9876012345', 'Indore', 'Laptop', 'Electronics', 'TechWorld', '9811111111', 1, 72000.00),

(112, 'Kavya Mishra', '9898989898', 'Patna', 'Notebook', 'Stationery', 'PaperHouse', '9844444444', 15, 100.00),

(113, 'Mohit Arora', '9789012345', 'Amritsar', 'Office Chair', 'Furniture', 'FurniMart', '9833333333', 2, 4800.00);



select * from OrderData;



INSERT INTO OrderData
VALUES

(114, 'Rahul Sharma', '9876543210', 'Delhi', 'Keyboard', 'Electronics', 'TechWorld', '9811111111', 1, 1800.00),

(115, 'Priya Singh', '9876501234', 'Mumbai', 'Notebook', 'Stationery', 'PaperHouse', '9844444444', 12, 120.00),

(116, 'Aman Verma', '9812345678', 'Pune', 'Mouse', 'Electronics', 'TechWorld', '9811111111', 2, 900.00),

(117, 'Neha Gupta', '9123456780', 'Jaipur', 'Office Chair', 'Furniture', 'FurniMart', '9833333333', 1, 4800.00),

(118, 'Rahul Sharma', '9876543210', 'Delhi', 'Water Bottle', 'Accessories', 'DailyNeeds', '9855555555', 4, 350.00),

(119, 'Priya Singh', '9876501234', 'Mumbai', 'Laptop', 'Electronics', 'TechWorld', '9811111111', 1, 68000.00),

(120, 'Karan Mehta', '9988776655', 'Chandigarh', 'Pen Pack', 'Stationery', 'PaperHouse', '9844444444', 15, 250.00),

(121, 'Rahul Sharma', '9876543210', 'Delhi', 'Headphones', 'Electronics', 'SoundHub', '9822222222', 1, 3000.00);



create table customers(customerID int primary key, customerName varchar(50), phone varchar(15), address varchar(100));


create table supplier(supplierID int primary key, supplierName varchar(50), supplierPhone varchar(15));


create table products(productID int primary key, productName varchar(50), category varchar(30));


 alter table products add column price decimal(10,2),add column supplierID int;


ALTER TABLE products
ADD CONSTRAINT fk_supplier
FOREIGN KEY (supplierID)
REFERENCES supplier(supplierID);


create table orders(orderID int primary key, customerID int, foreign key(customerID) references customers(customerID));


create table orderDetails(orderID int, productID int, Quantity int, primary key(orderID, productID), foreign key(orderID) references orders(orderID), foreign key(productID) references products(productID));



INSERT INTO customers (customerID, customerName, phone, address)
VALUES
(1, 'Rahul Sharma', '9876543210', 'Delhi'),
(2, 'Priya Singh', '9876501234', 'Mumbai'),
(3, 'Aman Verma', '9812345678', 'Pune'),
(4, 'Neha Gupta', '9123456780', 'Jaipur'),
(5, 'Karan Mehta', '9988776655', 'Chandigarh'),
(6, 'Anjali Kapoor', '9765432101', 'Lucknow'),
(7, 'Rohit Kumar', '9876123456', 'Bhopal'),
(8, 'Sneha Reddy', '9988123456', 'Hyderabad'),
(9, 'Vikas Yadav', '9012345678', 'Kanpur'),
(10, 'Pooja Sharma', '9123456789', 'Noida'),
(11, 'Aditya Jain', '9876012345', 'Indore'),
(12, 'Kavya Mishra', '9898989898', 'Patna'),
(13, 'Mohit Arora', '9789012345', 'Amritsar');


SELECT * FROM customers;




INSERT INTO supplier (supplierID, supplierName, supplierPhone)
VALUES
(201, 'TechWorld', '9811111111'),
(202, 'SoundHub', '9822222222'),
(203, 'FurniMart', '9833333333'),
(204, 'PaperHouse', '9844444444'),
(205, 'DailyNeeds', '9855555555');





SELECT * FROM supplier;






INSERT INTO products (productID, productName, category, price, supplierID)
VALUES
(301, 'Laptop', 'Electronics', 65000.00, 201),
(302, 'Headphones', 'Electronics', 2500.00, 202),
(303, 'Office Chair', 'Furniture', 4500.00, 203),
(304, 'Notebook', 'Stationery', 120.00, 204),
(305, 'Water Bottle', 'Accessories', 350.00, 205),
(306, 'Mouse', 'Electronics', 800.00, 201),
(307, 'Keyboard', 'Electronics', 1500.00, 201),
(308, 'Study Table', 'Furniture', 6500.00, 203),
(309, 'Pen Pack', 'Stationery', 250.00, 204),
(310, 'Java Book', 'Books', 600.00, 204),
(311, 'AI Book', 'Books', 750.00, 204),
(312, 'Python Book', 'Books', 550.00, 204);



SELECT * FROM products;






INSERT INTO orders (orderID, customerID)
VALUES
(101,1),
(102,2),
(103,3),
(104,4),
(105,5),
(106,6),
(107,7),
(108,8),
(109,9),
(110,10),
(111,11),
(112,12),
(113,13),
(114,1),
(115,2),
(116,3),
(117,4),
(118,1),
(119,2),
(120,5),
(121,1);


SELECT * FROM orders;




INSERT INTO orderDetails (orderID, productID, Quantity)
VALUES
(101,301,2),
(102,302,1),
(103,303,3),
(104,304,10),
(105,305,5),
(106,306,2),
(107,307,1),
(108,308,1),
(109,309,20),
(110,305,3),
(111,301,1),
(112,304,15),
(113,303,2),
(114,307,1),
(115,304,12),
(116,306,2),
(117,303,1),
(118,305,4),
(119,301,1),
(120,309,15),
(121,302,1);


SELECT * FROM orderDetails;



/* update Rahul's Phone no. Which table should be updated?*/
 update customers set phone ='8888558855' where customerName ="Rahul Sharma";



/* Add one new Customer. Without placing any order. Is it possible?*/
INSERT INTO customers  VALUES (14,"Dev",'32345667456','Delhi');



/* delete order 112. Check whether customer info still exists?*/
delete from orderDetails where orderID=112;

