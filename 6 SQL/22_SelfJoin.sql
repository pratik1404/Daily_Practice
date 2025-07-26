select * from table1

select * from table1 as a inner join table1 as b  
on a.c1 = b.c1

select * from table1 as a join table1 as b
on a.c1 = b.c1

select * from table1 as a left join table1 as b
on a.c1 = b.c1

select a.c1 as [a.c1], a.c2 as [a.c2], b.c2 as [b.c2] from table1 as a join table1 as b
on a.c1 = b.c1





CREATE TABLE people (
  id INT,
  name VARCHAR(50),
  city VARCHAR(50)
);

INSERT INTO people VALUES
(1, 'Alice', 'Pune'),
(2, 'Bob', 'Pune'),
(3, 'Carol', 'Mumbai'),
(4, 'David', 'Pune'),
(5, 'Eve', 'Mumbai');

select * from people


select 
a.id , a.name, b.name ,a.city
from people as a 
join people as b
on a.city = b.city and a.id< b.id



select 
a.id , a.name ,b.name,a.city  
from people as a 
join people as b  
on a.city = b.city and a.id < b.id 

