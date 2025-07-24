select * from sales

select sum(totalamount) as [sum of total amount] from sales

select sum(quantity) as [total quantity] from sales 

select sum(quantity)as [total quantity] , sum(totalamount) as [total amount] from sales 

select avg(quantity) as [avg of quantity] from sales 

select avg(totalamount) as [avg total amount] from sales 

select avg(quantity)as[avg quantity] , avg(totalamount) as [avg total amount] from sales


-- Sum of quantity & totalamount and avg of quantity and total amount for each distinct product 

select 
productid , storeid,
sum(quantity) as [sum of quantity],
sum(totalamount) as [sum of total amount],
avg(quantity) as [avg of quantity],
avg(totalamount) as [avg of total amount]
from sales 
group by productid , storeid




-- Count function

select * from sales 

select count(*)[number of rows] from sales 

select count(productid)[total productid] from sales

select count(paymentmethod) from sales 

select productid , count(productid) from sales
group by productid

select paymentmethod , count(paymentmethod) from sales  
group by paymentmethod

select paymentmethod , count(*) from sales  
group by paymentmethod