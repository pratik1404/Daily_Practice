-- Create the table with EmployeeID and Email
CREATE TABLE EmployeeRecords_2 (
    EmployeeID INT,
    Email VARCHAR(100)
);


-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords_2 (EmployeeID, Email) VALUES
(1, 'alice@example.com'),
(2, 'bob@example.com'),
(3, 'carol@example.com'),
(4, 'david@example.com'),
(2, 'bob@example.com'),        -- Duplicate entry (same EmployeeID and Email)
(4, 'david@example.com'),      -- Duplicate entry (same EmployeeID and Email)
(5, 'shared@example.com'),     -- Valid case: Same email, different EmployeeID
(6, 'shared@example.com');     -- Valid case: Same email, different EmployeeID


select * from EmployeeRecords_2

select distinct * into #1 from EmployeeRecords_2 

TRUNCATE table EmployeeRecords_2


insert into EmployeeRecords_2 select * from #1

select * from EmployeeRecords_2

with cte as (
select 
employeeid , email , DENSE_RANK() over (partition by email order by EmployeeID) as [dr] 
from EmployeeRecords_2
)

delete from cte where dr >= 2

