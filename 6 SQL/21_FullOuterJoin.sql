select * from table1 

select * from table2

select * from table1 as a full outer join table2 as b on a.c1 = b.c1

select a.c1 as [a.c1] , a.c2 as [a.c2], b.c1 as [b.c1] , b.c3 as [b.c3] from table1 as a full outer join table2 as b on a.c1 = b.c1


