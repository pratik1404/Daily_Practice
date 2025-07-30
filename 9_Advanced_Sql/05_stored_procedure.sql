create database testDB

use testdb

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);


-- Example 1 

create PROCEDURE sp_test
as 
begin 
    select * from Employees
    
end 


sp_test

EXEC sp_test

execute sp_test



-- Example 2 :- Create a module that only gives firstname and lastname 


create proc sp_test_2
as 
BEGIN
    select firstname , lastname  from Employees
end


sp_test_2



--Example 3 :- alter the procedure and make changes 


alter proc sp_test_2
AS
BEGIN
    select EmployeeID , firstname , lastname , salary from Employees
end 

sp_test_2
