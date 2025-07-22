select * from Employees

-- (AND)& (OR) oeprators 

select * from Employees
where lastname = 'patil' and firstname = 'pratik'

select * from Employees
where lastname = 'Patil' or lastname ='gore'

select * from Employees
where salary > 80000 and lastname = 'Patil'

select * from Employees
where lastname = 'patil' and id = 1

select * from Employees
where lastname = 'patil' and id = '3'


select * from dbo.EmployeeRecords
where department = 'Data Analyst' or department = 'Data Engineer'

select * from EmployeeRecords
where (department = 'Data Analyst' or department = 'Full Stack') AND salary > 60000














-- not operator


select * from EmployeeRecords
where not salary > 80000

select * from EmployeeRecords
where not firstname = 'Jayesh' AND not salary < 70000


select * from EmployeeRecords
where not firstname = 'Mayur' AND not salary < 50000


select * from EmployeeRecords
where not lastname = 'patil' or not salary < 80000










-- Between Oeprator 

select * from EmployeeRecords
where salary BETWEEN 75000 and 100000

SELECT * from EmployeeRecords
where salary > 75000 and salary < 100000

select * from EmployeeRecords
where salary not between 75000 and 99999

select * from EmployeeRecords
where not salary between 75000 and 99999 





-- IN operator 

select * from EmployeeRecords


SELECT * from EmployeeRecords
where department in ('Data Analyst' , 'Full Stack')



Select  * from EmployeeRecords
where not department = 'Data Analyst' AND not department = 'Full Stack'

Select  * from EmployeeRecords
where department not in('Data Analyst' , 'Full Stack')

