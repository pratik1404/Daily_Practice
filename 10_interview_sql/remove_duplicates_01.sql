-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords1 (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords1 (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry


-- Approach 1




with cte as (
    select * , row_number() over (partition by employeeid , employeename , managerid order by employeeid )
        as [row number]
    from employeerecords1 
) 


-- select * from cte 
delete from cte where [row number] = 2


select * from employeerecords1


-- creating backup 
select * into #employeerecords1_backup from employeerecords1



-- Approach 2 


-- creating backup 
select * into employeerecords1_backup from #employeerecords1_backup 


select * from employeerecords1_backup




-- Removes duplicate 

select distinct * into #temp1 from employeerecords1_backup

select * from #temp1