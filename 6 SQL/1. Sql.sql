create database students;

use students;

create table student(
id int primary key ,
name nvarchar(60),
deptid int ,
grade varchar(30),
address varchar(100)
);

insert into student
(id , name , deptid , grade , address)
values
(1, "Pratik" , 101 , "O" , "Pimpri"),
(2, "Pushkar" , 101 , "A" , "Pimpri"),
(3, "Akshay" , 102 , "A" , "kamgarnagar"),
(4, "Vedant" , 103 , "A" , "Nigdi"),
(5, "Abhishek" , 110 , "B" , "Pimpri");


select * from student ;

select id , concat(name , " " , deptid) as "name and dept id" from student ;