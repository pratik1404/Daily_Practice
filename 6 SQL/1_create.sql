create database employees

use employees 

create table Employees(
id int PRIMARY KEY,
firstname VARCHAR(30),
lastname VARCHAR(30),
department varchar(40),
salary int,
hiredate DATE
);


INSERT INTO Employees(id, firstname, lastname, department, salary, hiredate) values 
(1, 'Pratik' , 'Patil' , 'Data Analyst' , 100000 , '2025-09-22'),
(2, 'Pushkar' , 'Patil' , 'Product Developer' , 95000 , '2025-01-20'),
(3, 'Akshay' , 'Patil' , 'Full Stack' , 70000 , '2025-09-22'),
(4, 'Jayesh' , 'Patil' , 'Data Engineer' , 50000 , '2025-12-07'),
(5, 'Mayur' , 'Patil' , 'Data Analyst' , 76000 , '2025-09-22');


select * from employees

select concat(firstname,' ' , lastname)[full name] from Employees 


create table EmployeeRecords(
id int PRIMARY KEY,
firstname VARCHAR(30),
lastname VARCHAR(30),
department varchar(40),
salary int,
hiredate DATE
);

INSERT INTO EmployeeRecords(id, firstname, lastname, department, salary, hiredate) values 
(1, 'Pratik' , 'Patil' , 'Data Analyst' , 100000 , '2025-09-22'),
(2, 'Pushkar' , 'Patil' , 'Product Developer' , 95000 , '2025-01-20'),
(3, 'Akshay' , 'Patil' , 'Full Stack' , 70000 , '2025-09-22'),
(4, 'Jayesh' , 'Patil' , 'Data Engineer' , 50000 , '2025-12-07'),
(5, 'Mayur' , 'Patil' , 'Data Analyst' , 76000 , '2025-09-22');


create table EmployeeRecords(
id int PRIMARY KEY,
firstname VARCHAR(30),
lastname VARCHAR(30),
department varchar(40),
salary int,
hiredate DATE
);

INSERT INTO EmployeeRecords(id, firstname, lastname, department, salary, hiredate) values 
(1, 'Pratik' , 'Patil' , 'Data Analyst' , 100000 , '2025-09-22'),
(2, 'Pushkar' , 'Patil' , 'Product Developer' , 95000 , '2025-01-20'),
(3, 'Akshay' , 'Patil' , 'Full Stack' , 70000 , '2025-09-22'),
(4, 'Jayesh' , 'Patil' , 'Data Engineer' , 50000 , '2025-12-07'),
(5, 'Mayur' , 'Patil' , 'Data Analyst' , 76000 , '2025-09-22');


select * from information_schema.columns
where table_name = 'EmployeeRecords' 

