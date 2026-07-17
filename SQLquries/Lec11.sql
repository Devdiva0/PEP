CREATE DATABASE IF NOT EXISTS sql_training;
USE sql_training;



DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_id        INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    email         VARCHAR(100),
    department    VARCHAR(50),
    salary        DECIMAL(10,2),
    bonus_pct     DECIMAL(5,2),
    hire_date     DATE,
    birth_date    DATE,
    last_login    DATETIME
);



INSERT INTO employees
(first_name, last_name, email, department, salary, bonus_pct, hire_date, birth_date, last_login)
VALUES
('Amit',    'Sharma',   'amit.sharma@company.com',    'Sales',       55000.756, 8.5,  '2019-03-15', '1990-06-12', '2026-07-01 09:15:00'),
('Priya',   'Verma',    'priya.verma@company.com',    'Marketing',   62000.333, 10.25,'2020-07-22', '1988-11-25', '2026-07-05 14:42:00'),
('Rahul',   'Nair',     'rahul.nair@company.com',     'IT',          78500.999, 12.0, '2018-01-10', '1992-02-18', '2026-07-10 08:05:00'),
('Sneha',   'Iyer',     'sneha.iyer@company.com',     'Finance',     49500.125, 6.75, '2021-11-05', '1995-09-30', '2026-06-28 17:30:00'),
('Karan',   'Malhotra', 'karan.malhotra@company.com', 'IT',          91000.5,   15.0, '2016-05-19', '1985-04-02', '2026-07-11 11:20:00'),
('Neha',    'Gupta',    'neha.gupta@company.com',     'Sales',       53000.0,   9.4,  '2022-02-28', '1998-01-15', NULL),
('Vikram',  'Singh',    'vikram.singh@company.com',   'HR',          47000.45,  5.5,  '2023-08-14', '1993-07-08', '2026-07-12 19:10:00'),
('Ananya',  'Das',      'ananya.das@company.com',     'Marketing',   58000.876, 7.2,  '2017-09-01', '1991-12-20', '2026-07-09 10:00:00'),
('Rohan',   'Kapoor',   'rohan.kapoor@company.com',   'Finance',     67000.654, 11.1, '2019-12-12', '1989-03-27', '2026-07-02 13:55:00'),
('Ishita',  'Joshi',    'ishita.joshi@company.com',   'HR',          51000.2,   8.0,  '2020-04-04', '1996-10-10', '2026-07-07 16:25:00');



select * from employees;



// NUMERIC FUCNTIONS
-- round(number,decimalplace)
-- truncate(number, 1) // it will cut down the extra digits
-- ceil(number) //rounds up
-- floor(number) //rounds down
-- abs(-45.3) //absolute(positive value)
-- mod(emp_id,2) //remainder
-- power(2,10) //two_power_ten
-- sqrt(144) //square root
-- sign(-25) //gives (-,+,0)
-- greatest(10,20,30,2,19) and least(10,20,30,2,19) // max and min(scalar function)
-- exp(1) //e_power_1
-- log(100) 
-- pi() //value of pi
-- rand()
-- rand(10)


// DATE & TIME FUNCTION
-- curdate() or current_date() //current date
-- curtime() or current_time() //current time
-- now() //current date and time
-- sysdate() // system date and time
-- current_timestamp() // current timestamp


-- year()
-- month()
-- monthname()
-- day()
-- dayname()
-- dayofmonth()
-- dayofweek()
-- dayofyear()
-- quarter()
-- week()
-- hour()
-- minute()
-- second()


-- date_add()
-- date_sub()
-- ADDDate()
-- SUBDATE()


-- datediff()
-- timediff()
-- timestampdiff()

-- date_format() //%d-%m-%Y
-- time_format()

-- str_to_date()
-- cast()

-- last_day()

-- makedate() // create a 


select round(salary,0) from employees;

select truncate(salary,1) from employees;

select round((salary/12),2) from employees;

select round((salary*bonus_pct/100),2) as Bonus_amount from employees;


SELECT (select AVG(salary) FROM employees) - salary as salary_avg_diff from employees;

select ceil(salary), floor(salary) from employees;

SELECT *
FROM employees
WHERE MOD(emp_id, 2) = 0;


select sqrt(salary) from employees;






select date_format(hire_date, '%d %M %Y') as hire_date from employees;



select datediff(curdate(),hire_date) as no_of_days from employees;



SELECT emp_id,
       birth_date,
       TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM employees;

select week(hire_date) from employees;

select dayname(hire_date) from employees;


select * from employees where monthname(hire_date)="December";





































