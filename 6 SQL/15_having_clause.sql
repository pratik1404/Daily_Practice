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

--
--
--
--
--
--
--
--
--
-- where clause practice 
/*

1)Show all sales where PaymentMethod is 'Cash'.

2)Show records where TotalAmount is greater than ₹200.

3)List all sales that happened after '2023-08-03'.

4)Find all rows where PaymentMethod is not NULL.

5)Show sales where StoreID is 1 and PaymentMethod is 'Credit Card'.

6)List all sales done by SalespersonID 203.

7)Find all sales where Quantity is between 5 and 10.


*/
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

select * from sales 
where quantity between 5 and 10


--
--
--
--
--
--
--
--
--
--
--
--
--
-- HAVING CLAUSE PRACTICE
/*
1) Show total TotalAmount grouped by PaymentMethod, but only include those with total sales > ₹400.

2) Show number of sales per StoreID, only for stores that had more than 3 sales.

3) Find average TotalAmount for each SalespersonID, but only include those with avg > ₹200.

4) Group by CustomerID, and show total quantity ordered. Only show customers who bought more than 10 units total.

5) Show total TotalAmount per ProductID, but only for products where total amount is less than ₹500.

6) Find total number of sales per SaleDate, and include only dates where total orders are more than 1.

*/

select 
paymentmethod,
sum(totalamount)
from sales
group by paymentmethod
having sum(totalamount) > 400


-- Show number of sales per StoreID, only for stores that had more than 3 sales.
select 
storeid , count(*) as [number of salesk]
from sales 
group by storeid
having count(*) > 3

select * from sales





-- Mix of WHERE + GROUP BY + HAVING
/*
1) Show total sales per PaymentMethod, but only for orders after '2023-08-02', and only include payment methods with total sales > ₹300.

2) Show total TotalAmount per StoreID where PaymentMethod is not NULL, and filter only those stores where total sales > ₹500.

3) Group sales by SalespersonID for orders with Quantity > 5, and only show those with total sales amount > ₹250.
*/

select * from sales 

select
paymentmethod ,
sum(totalamount)
from sales 
where saledate > '2023-08-02' 
group by paymentmethod
having sum(totalamount) > 300


select 
storeid,
sum(TotalAmount)
from sales
where paymentmethod is not null
group by storeid
having sum(TotalAmount) > 500

select 
SalespersonID , 
sum(TotalAmount)
from sales 
where quantity > 5
group by SalespersonID
having sum(totalamount) >250