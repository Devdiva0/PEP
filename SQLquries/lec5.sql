use LPU_db;

create table departments(department_id int primary key, department_name varchar(50),hod_name varchar(100));

INSERT INTO departments (department_id, department_name, hod_name)
    VALUES
     (101, 'Computer Science', 'Dr. Rajesh Kumar'),
     (102, 'Information Technology', 'Dr. Priya Sharma'),
     (103, 'Electronics', 'Dr. Amit Verma'),
     (104, 'Mechanical', 'Dr. Neha Singh'),
     (105, 'Civil', 'Dr. Suresh Gupta');

Select * from departments;

create table faculty( faculty_id int primary key, faculty_name varchar(100), department_id int, foreign key(department_id) references departments(department_id));

INSERT INTO faculty (faculty_id, faculty_name, department_id)
VALUES
(201, 'Ankit Sharma', 101),
(202, 'Priya Verma', 102),
(203, 'Rahul Mehta', 103),
(204, 'Sneha Gupta', 104),
(205, 'Vikas Singh', 105);

Select * from faculty;

create table courses( course_id int primary key,
    course_name varchar(100),
    faculty_id int,
    duration_months int,
    foreign key(faculty_id) references faculty(faculty_id));


INSERT INTO courses (course_id, course_name, faculty_id, duration_months)
VALUES
(301, 'Database Management Systems', 201, 4),
(302, 'Data Structures', 202, 6),
(303, 'Operating Systems', 203, 5),
(304, 'Computer Networks', 204, 4),
(305, 'Artificial Intelligence', 205, 6);

select * from courses;


show create table student_LPU;


desc courses;


Alter table student_LPU add column department_id int;

update student_LPU set department_id =101 where stdID in (101,102,103,104,105,106);

update student_LPU set department_id =102 where stdID in (107,108,109,110,111,112);

update student_LPU set department_id =103 where stdID in (113,114);

update student_LPU set department_id =104 where stdID in (115,116);

update student_LPU set department_id =105 where stdID in (117,118,119);

alter table student_LPU add constraint fk_students_department foreign key(department_id) references departments(department_id);


Select * from student_LPU;


Alter table student_LPU add column faculty_id int;

update student_LPU set faculty_id =201 where stdID in (101,102,104,106);

update student_LPU set faculty_id =202 where stdID in (103,105,107,110);

update student_LPU set faculty_id =203 where stdID in (108,109,111,112,119,118);

update student_LPU set faculty_id =204 where stdID in (113,114,117);

update student_LPU set faculty_id =205 where stdID in (115,116);



alter table student_LPU add constraint fk_students_faculty foreign key(faculty_id) references faculty(faculty_id);


#------------------------------------------------------------------------------------

create database OnlineOrders;

Use OnlineOrders;


create table Customers( Customer_id int primary key, customer_name varchar(100),city varchar(100));




create table delivery_orders(order_id int primary key, customer_id int, restaurant_id int,partner_id int, order_amount int, order_date date, foreign key(customer_id) references Customers);


create table delivery_partners(partner_id int primary key, partner_name varchar(100) not null, vehicle varchar(50));


create table restaurants(restaurant_id int primary key, restaurant_name varchar(100) not null, city varchar(50));



alter table delivery_orders add constraint fk_customer_id foreign key(customer_id) references Customers;


alter table delivery_orders add constraint fk_restaurant_id foreign key(restaurant_id) references restaurants;


desc delivery_orders;

alter table delivery_orders add constraint fk_partner_id foreign key(partner_id) references delivery_partners;


desc delivery_partner;


desc restaurants;

desc Customers;




