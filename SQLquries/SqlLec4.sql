show databases;

create database LPU_db;


use LPU_DB;
Create table student_LPU(stdID int, name varchar(20),batch int, course varchar(20), city varchar(20),CGPA decimal);


INSERT INTO student_LPU (stdID, name, batch, course, city, CGPA)
VALUES
    (101, 'Aarav', 2023, 'CSE', 'Delhi', 8.5),
    (102, 'Diya', 2023, 'CSE', 'Mumbai', 9.1),
    (103, 'Rohan', 2022, 'ECE', 'Pune', 7.8),
    (104, 'Priya', 2023, 'IT', 'Jaipur', 8.9),
    (105, 'Karan', 2021, 'ME', 'Lucknow', 7.5),
    (106, 'Sneha', 2022, 'CSE', 'Bhopal', 9.3),
    (107, 'Rahul', 2023, 'EEE', 'Chandigarh', 8.0),
    (108, 'Anjali', 2022, 'CSE', 'Noida', 9.5),
    (109, 'Vikas', 2021, 'Civil', 'Kanpur', 7.2),
    (110, 'Neha', 2023, 'IT', 'Indore', 8.7),
    (111, 'Aditya', 2022, 'CSE', 'Patna', 8.4),
    (112, 'Pooja', 2021, 'ECE', 'Ranchi', 7.9),
    (113, 'Mohit', 2023, 'ME', 'Amritsar', 8.1),
    (114, 'Kavya', 2022, 'CSE', 'Ludhiana', 9.6),
    (115, 'Arjun', 2023, 'IT', 'Gurugram', 8.8);


SELECT * FROM student_LPU;


create table attendance(
    stdID int,
    course_code varchar(10),
    Attendance_date date,
    primary key(stdID,course_code)
    );

INSERT INTO attendance(stdID, course_code, attendance_date)
    VALUES
    (101,'CSE101','2026-07-01'),
    (102,'CSE101','2026-07-01'),
    (103,'ECE201','2026-07-01'),
    (104,'IT301','2026-07-01'),
    (105,'ME101','2026-07-01'),
    (106,'CSE101','2026-07-02'),
    (107,'EEE201','2026-07-02'),
    (108,'CSE201','2026-07-02'),
    (109,'CIV101','2026-07-02'),
    (110,'IT301','2026-07-03'),
    (111,'CSE101','2026-07-03'),
    (112,'ECE201','2026-07-03'),
    (113,'ME101','2026-07-03'),
    (114,'CSE201','2026-07-04'),
    (115,'IT301','2026-07-04');

select * from attendance;

ALTER TABLE student_LPU ADD PRIMARY KEY (stdID);

create table Enrollments( Enrollment_ID int primary key, stdID int, course_name varchar(20), foreign key(stdID) references student_LPU(stdID) );


alter table Enrollments modify course_name varchar(50);


INSERT INTO Enrollments (Enrollment_ID, stdID, course_name)
    VALUES
    (1, 101, 'Data Structures'),
    (2, 102, 'Database Systems'),
    (3, 103, 'Digital Electronics'),
    (4, 104, 'Web Development'),
    (5, 105, 'Thermodynamics'),
    (6, 106, 'Operating Systems'),
    (7, 107, 'Power Systems'),
    (8, 108, 'Computer Networks'),
    (9, 109, 'Surveying'),
    (10, 110, 'Java Programming'),
    (11, 111, 'Artificial Intelligence'),
    (12, 112, 'Signals and Systems'),
    (13, 113, 'Machine Design'),
    (14, 114, 'Software Engineering'),
    (15, 115, 'Python Programming');

select * from Enrollments;

alter table student_LPU rename column course to branch;


SELECT * FROM student_LPU;


create table students_Auto(
    stdID int auto_increment primary key,
    student_name varchar(50)
    );


insert into students_auto(student_name) values ('Rahul');


insert into students_auto(student_name) values ('Diya');


insert into students_auto(student_name) values ('Dipesh');


insert into students_auto(student_name) values ('Tejas');

insert into students_auto(student_name) values ('Saransh');


insert into students_auto(student_name) values ('Ishita');


insert into students_auto(student_name) values ('Shewta');


insert into students_auto(student_name) values ('Sabeena');


insert into students_auto(student_name) values ('Anshika');

select * from students_auto;


delete from students_auto where stdID=8;


insert into students_auto(student_name) values ('Anshi');


select * from students_auto;

delete from students_auto where stdID=10;

select * from students_auto;

insert into students_auto(student_name) values ('Anshi');


select * from students_auto;


insert into student_LPU values(116,'Diya',2025,'ME','Pune',7.5);


insert into student_LPU values(117,'Dev',2025,'ECE','Pune',8.7);



ALTER TABLE student_LPU
    ADD CONSTRAINT chk_cgpa
    CHECK (CGPA >= 0 AND CGPA <= 10);


insert into student_LPU values(118,'Deva',2025,'ECE','',8.7);


select * from student_LPU;

insert into student_LPU values(119,'Deva',2025,'ECE',NULL,8.7);


select * from student_LPU;

