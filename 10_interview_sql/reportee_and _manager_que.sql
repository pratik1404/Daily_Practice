-- Create the table
CREATE TABLE ReportingStructure (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    ManagerID INT
);

-- Insert data into the table
INSERT INTO ReportingStructure (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL), 
(2, 'Bob Johnson', 1),     
(3, 'Carol White', 1),     
(4, 'David Brown', 2),     
(5, 'Eve Davis', 2),       
(6, 'Frank Miller', 3);    



select * from ReportingStructure




select b.EmployeeName as [reportee] , a.EmployeeName as [manager]
from ReportingStructure as a  
inner join ReportingStructure as b 
on a.employeeid = b.ManagerID

union all 

select EmployeeName , null [manager ] from ReportingStructure
where managerid is null
order by manager asc