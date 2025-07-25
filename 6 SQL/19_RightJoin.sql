select * from table1
select * from table2


select * from table1 as a right join table2 as b on a.c1 = b.c1


select b.c1 , a.c2, b.c3 from table1 as a right join table2 as b on a.c1 = b.c1


SELECT b.c1 as [b.c1] , a.c2 as [a.c2] , b.c3 as [b.c3] FROM table1 AS a 
RIGHT JOIN table2 AS b 
ON a.c1 = b.c1


select * from table1 as a 
RIGHT JOIN table2 as b  
on a.c1 = b.c1

