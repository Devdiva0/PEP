USE sql_training;


-- view is virtual table
-- view doesn't take any space in memory 


Create view employee_basic as select first_name, department, salary from employees;


Select * from employee_basic;


show full tables where table_type='VIEW';


desc employee_basic;


create view high_salary as select * from employees where salary>70000;


select * from high_salary;


update employee_basic set salary=75000 where first_name='Neha';


select first_name, salary from employees where first_name ='Neha';


create or replace view employee_basic as select first_name, department, salary from employees;


select * from employee_basic;


create view temp_view as select * from employees;


drop view temp_view;


create view from_delhi as select * from employees where place='Delhi';


create or replace view emp as select concat(first_name,last_name) as name, salary from employees;


select * from emp;


create or replace view after_2023 as select * from employees where year(hire_date)>=2023;


select * from after_2023;


create view only_IT as select * from employees where department='IT';


select * from only_IT;


-- =========================================
-- indexes
-- =========================================
create index idx_email on employees(email);


show index from employees;

-- ========================================
-- composite index
-- =========================================
create index idx_dept_salary on employees(department, salary);


show index from employees;



-- ==========================================
-- unique index
-- ==========================================
create unique index idx_mail on employees(email);


show index from employees;


-- ===========================================
-- drop index
-- ===========================================
drop index idx_email on employees;


show index from employees;


create view top_paid_it_employees as select * from employees where department='IT' and salary > 70000 order by salary desc;


select * from top_paid_it_employees;



create view annual_salary_view as select emp_id, concat(first_name," ",last_name) as full_Name, department, salary, salary*12 as annual_salary from employees;



select * from annual_salary_view;



create or replace view department_salary_summary as select department, count(emp_id), avg(salary),max(salary) from employees group by department;



select * from department_salary_summary;


create view after_1jan23 as select concat(first_name," ",last_name) as name, department, hire_date, email from employees;



select * from after_1jan23;



create view greaterthan_avg as select concat(first_name," ",last_name) as name, department, salary from employees where salary>(select avg(salary) from employees);



select * from greaterthan_avg;


























