DROP DATABASE IF EXISTS companyDB;




create database companyDB;




use companyDB;


create table employees(emp_id int primary key,emp_name varchar(50), department varchar(30), salary decimal(10,2) );


INSERT INTO employees
(emp_id, emp_name, department, salary)
VALUES
(101, 'Amit Sharma', 'IT', 75000.00),
(102, 'Priya Verma', 'HR', 52000.00),
(103, 'Rahul Singh', 'Sales', 48000.00),
(104, 'Sneha Gupta', 'Finance', 68000.00),
(105, 'Karan Malhotra', 'IT', 92000.00),
(106, 'Neha Kapoor', 'HR', 56000.00),
(107, 'Rohan Mehta', 'Sales', 61000.00);



SELECT * FROM employees;




DELIMITER //

CREATE PROCEDURE ShowAllEmployees()
BEGIN
    SELECT * FROM employees;
END //

DELIMITER ;



call ShowAllEmployees();






DELIMITER //

CREATE PROCEDURE empDepartment( in dept varchar(30))
BEGIN
    SELECT * FROM employees where department=dept;
END //

DELIMITER ;




call empDepartment('IT');


call empDepartment('HR');



DELIMITER //

CREATE PROCEDURE SalaryGreatherthan50000()
BEGIN
    SELECT * FROM employees where salary>50000;
END //

DELIMITER ;


Call SalaryGreatherthan50000();




DELIMITER //

CREATE PROCEDURE emp_filter
(
In dept varchar(30),
In min_salary decimal(10,2)
)
BEGIN
    SELECT * FROM employees where department=dept and salary>=min_salary;
END //

DELIMITER ;


Call emp_filter('IT',50000);



Show procedure status;

Show create procedure showallemployees;

Drop procedure slaryGreatherthan50000;



DELIMITER //
Create procedure finance_emp()
Begin
Select * from employees where department ='Finance';
End //
DELIMITER ;



call finance_emp();


show create procedure finance_emp;


























-- =======================
-- functions
-- =======================


DELIMITER //

CREATE FUNCTION CalculateBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //

DELIMITER ;



SELECT emp_name, salary, CalculateBonus(salary) AS bonus FROM employees;




































