select * from table1 

select * from table2

select * from table1 as a left join table2 as b on a.c1 = b.c1

select a.c1 , a.c3, b.c2 from table2 as a
left outer join table1 as b 
on a.c1 = b.c1


select a.c1, a.c2, b.c3 from table1 as a
left join table2 as b
on a.c1 = b.c1



