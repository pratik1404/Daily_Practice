select * from sales 

/*One Line Formula:
✅ WHERE = Row-level filter
✅ HAVING = Group-level filter

| Clause   | what it does ?                    |
| -------- | ------------------------------------- |
| `WHERE`  | To apply filter one by one row            |
| `HAVING` | After GROUP BY , **filter on group ** |


*/

SELECT
productid,
sum(quantity),
sum(totalamount),
avg(quantity),
avg(totalamount)
from sales
group by ProductID
having sum(TotalAmount) < 700   

select * from sales 


select
storeid , sum(totalamount) , sum(totalamount)
from sales
group by storeid 
having sum(totalamount) > 600


select * from sales 
where paymentmethod = 'cash' 

select * from sales 
where totalamount > 200

select * from sales 
where saledate > '2023-08-03'


select * from sales 
where paymentmethod is not NULL

select * from sales 
where storeid = 1 and paymentmethod = 'credit card'

select * from sales 
where SalespersonID = 203