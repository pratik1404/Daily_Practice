select * from students


--------------------------------------------------------------

-- Assign row / rannk / dense_rank order by marks in descending 




-- Row_number() --> In case of tie random row number will be assigned 
select 
* , ROW_NUMBER() OVER (ORDER BY marks DESC) AS [row number] 
from students


-- Rank() --> If there's tie next rank or ranks will be skippeed 
select 
* , rank() over (order by marks DESC) as [rank]
from students



-- Dense_rank() --> In case of tie rank will not be skipped 
select 
* , DENSE_RANK() over (order by marks desc) as [dense rank] 
from students


---------------------------------------------------------------


-- Assign row / rannk / dense_rank order by marks in ascending




-- Row_number() --> In case of tie random row number will be assigned 
select 
* , ROW_NUMBER() OVER (ORDER BY marks) AS [row number] 
from students



-- Rank() --> If there's tie next rank or ranks will be skippeed 
select 
* , rank() over (order by marks ) as [rank]
from students



-- Dense_rank() --> In case of tie rank will not be skipped 
select 
* , DENSE_RANK() over (order by marks ) as [dense rank] 
from students


