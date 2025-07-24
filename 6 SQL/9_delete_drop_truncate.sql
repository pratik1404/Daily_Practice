select * into #3
from Employees


select * from employees

select * from #3

-- Delete is used to remove certain records from table using where clause 
delete from #3
where firstname = 'tenjan'

delete from #3
where  firstname = 'muzan' or department is null 


select * into #4
from Employees

delete from #4 /*   If you don't use where clause while using delete ,
                    then entire table willl get deleted */ 



-- -- Truncate deletes entire table rows i.e. used for deleting entire records  but the columns remains as it is 

truncate table #3

select * from #3 

-- drop is used to delete entire table or database plus structure is also removed 

drop table #3
drop table #4

