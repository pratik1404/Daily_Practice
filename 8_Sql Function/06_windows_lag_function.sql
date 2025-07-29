select * from profitdata

use [Profit DB]

select 
*,lag(profit) over (partition by product order by monthnumber) as [last month profit ]
from profitdata




select 
monthnumber, monthname, sum(profit) as [sum of profit],
lag(sum(Profit)) over (order by monthnumber ) as [next months sum]
from ProfitData
group by monthnumber, monthname 