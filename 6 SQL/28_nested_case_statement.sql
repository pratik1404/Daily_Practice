select * from products


select
*,
    case 
        when category = 'electronics' then 
            case 
                when price > 300 then 'Premium product'
                else 'Affordable product'
            END
        when category in ('Furniture') then 
            case 
                when price > 200 then 'Premium Product'
                else 'Affordable Product' 
            end
        when category = 'Accessories' THEN
            case 
                when price > 200 then 'Premium Product'
                else 'Affordable product'
            end
    END as [Premium / Affordable]
from products