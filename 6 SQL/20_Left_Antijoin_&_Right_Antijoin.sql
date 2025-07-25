select * from table1

select * from table2


-- Left Anti Join
select * from table1 as a 
left join table2 as b 
on a.c1 = b.c1
where b.c3 is null or a.c1 is null or a.c2 is null or b.c1 is null

-- Right Anti Join
SELECT * FROM table1 AS a
RIGHT JOIN table2 AS b  
ON a.c1 = b.c1
where a.c2 is null


SELECT b.c1 as [b.c1] , a.c2 as [a.c2] , b.c3 as [b.c3] FROM table1 AS a
RIGHT JOIN table2 AS b  
ON a.c1 = b.c1
where a.c2 is null