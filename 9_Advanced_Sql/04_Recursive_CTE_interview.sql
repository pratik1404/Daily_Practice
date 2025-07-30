| emp\_id | emp\_name | manager\_id |
| ------- | --------- | ----------- |
| 1       | Aakash    | NULL        |
| 2       | Bhavesh   | 1           |
| 3       | Chirag    | 2           |
| 4       | Deepak    | 3           |


create table manager (
    id int not null ,
    emp_name varchar(50),
    manager_id int 
)

insert into manager 
values
(1, 'Aakash' , null),
(2, 'Bhavesh' , 1),
(3, 'Chirag' , 2),
(4, 'Deepak',3) 

select * from manager


-- Write a recursive query to get the full reporting chain (emp_id → manager_id).

with hierarchy as (
    SELECT id, emp_name, manager_id, CAST(emp_name AS VARCHAR(MAX)) AS path
    FROM manager
    WHERE manager_id IS NULL
      UNION ALL

    SELECT e.id, e.emp_name, e.manager_id, 
           CAST(h.path + ' → ' + e.emp_name AS VARCHAR(MAX))
    FROM manager e
    INNER JOIN Hierarchy h ON e.manager_id = h.id
)
SELECT * FROM Hierarchy

-- 2. Print Numbers 1 to N (e.g., 1 to 10)

with num as(
    select 1 as n
    union ALL
    select n+1 from [num] where n <10
)
select * from num


-- 3. Factorial Using Recursive CTE'

with fact as (
    select 1 as n  
    union all 
    select n+1 from [fact] where n < 6
)
select round(exp(sum(log(n))),0) from fact



