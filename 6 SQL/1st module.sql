create database employees;

use employees;


create table employee(
emp_id int primary key ,
firstname varchar(50),
lastname varchar(60),
dept varchar(100),
salary decimal (10,2),
hiredate date 
);


insert into employee
(emp_id , firstname , lastname , dept, salary , hiredate)
values 
(1, "pratik" , "patil" , "data analyst " , 120000.00 , "2025-11-22"),
(2, "pushakr" , "patil" , "product engg" , 80000.00 , "2024-12-30"),
(3, "akshay" , "patil" , "sde" , 70000.00 , "2025-12-21"),
(4, "mayur" , "patil" , "data analyst " , 120000.00 , "2025-11-22"),
(5, "jayesh" , "patil" , "data engg" , 60000.00 , "2026-1-14");


select * from employee ;

select emp_id , salary from employee;

select emp_id , concat(firstname , lastname ) from employee;

select emp_id , concat(firstname, " " , lastname) as fullname from employee;

-- This technique of writing fullname in bractes is generally not used in mysql it is used in other db like microsoft sql , sql server 
select emp_id , concat(firstname, " " , lastname)[fullname] from employee; 