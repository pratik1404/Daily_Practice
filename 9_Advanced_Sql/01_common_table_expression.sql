    /*
A Common Table Expression (CTE) is a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement.
It is defined using the WITH keyword.
and they make complex thoery easy to write , understand , and maintain by breaking them in simpler task 



🔹 CTE kya hota hai?
CTE (Common Table Expression) ek temporary naam wala subquery hota hai — 
jaise ek short-term memory jisko tum turant next query mein use kar sakte ho

🔥 Why Not Use Subqueries Instead?
✅ You can, but:

❌ Repeating logic = messy and error-prone

❌ Harder to debug

❌ No recursion

❌ Not readable in multiple-step logic



🔥 CTE ka asli use kya hai?
✅ 1. Complex Query ko Steps mein todna
Maan le tu ek bada query likh raha hai jisme:

Pehle filter karna hai,

Fir join,

Fir grouping,

Fir ranking...

Ye sab ek hi query mein likh diya to dimag phat jayega 😵

CTE use karke tu query ko parts mein likh sakta hai, 



*/


select * from employees



-- write a query fro finding employees with slary greater than 5000 and department in fullstack , data analyst


with high_salary as (
    select * from employees where salary > 50000
)

select * from high_salary where department in ('full stack' , 'Data Analyst')


-- find top 5 rank from employees 


select * into #temp1
from employees

select * from #temp1



-- Method 1 using sub queries 


SELECT * FROM (
    SELECT firstname, lastname, RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM #temp1
) AS t
WHERE rnk <= 5


--Method 2 using CTE


with ranked as (
    select firstname , lastname , rank() over (order by salary desc) as rnk from #temp1
)

select * from ranked where rnk <= 5



-- Exmaple 1:- Update using CTE

with upd_cte as (
    select * from #temp1 where id in (1, 2 , 6)
)

update #temp1 set id = 2 where id in (select distinct id from upd_cte)

select * from #temp1



-- Example 2:- Delete using CTE 


with delete_cte as(
    select * from #temp1 where id in (101)
) 

delete from #temp1 where id in (select distinct id from delete_cte)


select * from #temp1


-- Example 3 :- Insert using cte


with insert_cet as (
    select * from #temp1 where id in (3)
)

insert into #temp1 select * from insert_cet 