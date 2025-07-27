--Order Of Execution

select * from EmployeeSalaries

--Correct Query
select distinct top 1 Department,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having AVG(Salary)>55000
order by Department 


--From & Joins
--where
--group by
--having
--select
--distinct
--order by
--top

--Incorrect Query
select distinct top 1 Department,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having [Avg Salary]>55000
order by Department 