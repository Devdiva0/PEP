use LPU_DB;
select * from student_LPU;
alter table student_LPU add column course varchar(10);
select * from student_LPU;

/*rename*/
alter table student_LPU rename column StudentName to StdName;
select * from student_LPU;

Desc student_LPU;

select * from student_LPU;

alter table student_LPU
rename column StudentName to StdName;

alter table Student_LPU
modify column CGPA decimal(2,1);

/* use  DISTINCT only when duplicate values need to be removed*/

select StdName as sname from student_LPU;

#arthmetic opreation
select StdName, CGPA, CGPA+1 as bonus_CGPA from student_LPU;

select * from student_LPU where batch = 2023;

insert student_LPU value(103,"Sara", 2023, 9.0,21,"aligarh","IT"); 

insert student_LPU value(104,"Mamta", 2021, 8.0,24,"aligarh","ECE");

Select * from student_LPU where course = "IT";

Select * from student_LPU where city = "Delhi";

Select * from student_LPU where city="Delhi" and Batch = 2024;

insert student_LPU value(105,"Sara", 2023, 7.0,21,"aligarh","IT"); 

select * from student_LPU where CGPA>8 and course ="IT";

select * from student_LPU where CGPA>7 and course ="ECE";

Select * from student_LPU where course = "CSE" and Age>20;
