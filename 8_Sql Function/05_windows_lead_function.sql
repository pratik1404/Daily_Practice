select * from Profitdata


-- you need to add new column in such a way that it shows profit for next month for each given product 

select 
* , lead(Profit) over(partition by product order by monthnumber) [next month's profit] 
from Profitdata



-- we dont want product column in the output but we want each months total profit to be shown by MonthNumber , MonthName 
-- and also new column should be added to the next months total profit 

select 
MonthNumber , MonthName , sum(profit) as [Total profit] ,
lead(sum(profit)) over (order by monthnumber) as [next month's  profit]
from ProfitData
group by MonthNumber , MonthName 



