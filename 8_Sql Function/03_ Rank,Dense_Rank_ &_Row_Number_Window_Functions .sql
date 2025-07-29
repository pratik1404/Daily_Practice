select * from students 


-- Sort the data with each subject seperately order by marks  

select 
* , row_number() over (partition by subject order by marks desc) as [row number] 
from students


select 
* ,  row_number() over (partition by subject order by marks asc ) as [Row Number] 
from students


select 
* , rank() over (PARTITION by subject order by marks desc) as [rank] 
from students

select 
* , dense_rank() over (partition by subject order by marks desc) as [Dens Rank]
from students



-- Sort the data with each student &  order by marks  


select 
* , row_number() over (PARTITION by student_name order by marks desc) as [ Row number ] 
from students


select 
* , rank() over (PARTITION by student_name order by marks desc) as [ Row number ] 
from students




select 
* , dense_rank() over (PARTITION by student_name order by marks desc) as [ Row number ] 
from students