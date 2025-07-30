select * from employees 

select * into emp_backup from employees


select * from emp_backup



--- views 


-- create view 
create view view1 as 
(select * from emp_backup )

-- view a table 
select * from view1

-- create a view 
create view view2 as (
    select  employeeid , firstname , lastname ,email , departmentid , hiredate from employees 
)

select * from view2



-- updating a view caises updating the primary table (one that is being used ) 


update view1 
set employeeid = 100 
where employeeid in (1, 2, 3)



select * from emp_backup
select * from view1

