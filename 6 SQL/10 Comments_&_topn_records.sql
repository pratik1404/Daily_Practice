-- Hi! i am pratik and i am now learning MS SQL from krish naik 


-- This is single line comment 


/*
This is multi line comment 
and we can write as many lien as we wish to 

Also this is even be sued to write single line comment 
*/



-- how can we see top n records 

select * from employees

select top 2 * from employees 

select top 4 firstname , lastname from employees

select top 7 department from employees
order by department ASC
