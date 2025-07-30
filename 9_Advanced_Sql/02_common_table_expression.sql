use employees

select * from employees

select * into #temp2
from employees 


-- Example 1 union :-

with table1 as (
    select * from #temp2 where id in (1, 2, 3)
), 
table2 as (
    select * from #temp2 where id in (4, 5, 6)
)


select * from table1 
union ALL
select * from table2



-- Example 2 

with cte3 as (
    select id , firstname , lastname  , salary from #temp2 where id = 2
) , 
cte4 as (
    select id , firstname , lastname  , salary from #temp2 where id = 4
)


delete from #temp2 where id in (
    select distinct id from cte3
    union all
    select distinct id from cte4 
)


select * from #temp2



-- Example 3 

with cte5 as (
    select * from #temp2 where id = 3
), cte6 as (
    select * from #temp2 where id = 6
)

update #temp2 set id = 100 where id in (
    select distinct id from cte5
    union all
    select distinct id from cte6
)

select * from #temp2