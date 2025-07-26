select * from products 


-- Example1 :add a column to categorize each product into cateogory of high , low and medium 


select
*,
    case
        when price > 500 then 'high'
        when price <= 500 and price >=200 then 'medium'
        else 'low'
    end as [high/medium/low]
from products 



-- Example 2 : provide the priority to each category and sort the data according to priority

select * from products
order by 
    case 
        when category in ('electronics') then 1 
        when category in ('furniture') then 2 
        else 3
    end



select * from products
order by 
    case 
        when category in ('electronics') then 1 
        when category in ('furniture') then 2 
        when category in ('Accessories') then 3
    end