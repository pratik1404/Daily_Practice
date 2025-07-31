-- Interview Questions 
-- find the second  highest salary from the employee table 


-- Approach 1  = By usimng select statement 

select max(salary)from employees 
where salary < (select max(salary) from employees  ) 

-- Approach 2 = By using cte 

with CTE as (
select 
* , DENSE_RANK() over (order by salary desc) as [salary_ranked] 
from employees)

select * from cte 
where salary_ranked = 2


-- Approach 3  = by using subquery
select salary as [2nd highest slaary] from 
(select * , DENSE_RANK() over (order by salary desc) as [dr] from employees) as x
where dr = 2


-- Approach 4 using subquery again 
select top 1 salary from 
(select distinct top 2 salary  from employees 
order by salary desc 
) x 
order by salary asc




-- approach 5 multiple sub queries 


select * from employees 
where salary = (
    select min(salary) from(
        select distinct top 2 salary from employees
        order by salary desc 
    ) as temp
)


-- 3rd highest salary 
select * from employees 
where salary = (
    select min(salary) from (
        select top 3 salary from employees 
        order by salary desc)as x
)

