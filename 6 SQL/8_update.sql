select * from Employees



select * into #1 from Employees

/* Always use "where" clause while using update 
Because if we dont use it will directly affect to whole column*/  


update #1
set department = 'HR'
where department is null

select * from #1

update #1
set department = 'tester'
where department = ''


update #1
set salary = 90000 , hiredate = '2022-01-01'
where salary is null or hiredate is null

select * from #1


update #1
set department = 'demon'
where id = 7

select * from #1

update #1
set salary = 120000
where firstname = 'pratik'

update #1
set salary = 89303 ,hiredate = '2023-1-01'
where id = 7