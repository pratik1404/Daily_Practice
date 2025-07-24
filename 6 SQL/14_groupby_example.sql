select * from sales 

select paymentmethod , sum(totalamount)[total amount] from sales 
group by paymentmethod

select productid , paymentmethod , sum(totalamount)[total amount] from sales 
group by productid , paymentmethod
order by productid

