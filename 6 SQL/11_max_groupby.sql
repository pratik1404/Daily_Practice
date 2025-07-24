select * from sales

select max(totalamount)[MaximumTotalAmount] from sales

select max(paymentmethod)[maxpaymethod] from sales 

select max(saledate)[maxsaledate] from sales --- this gives latest sale date 

-- Maximum quantity sold for each product

select productid , max(quantity) from sales
group by ProductID

select * from sales

-- Select total amount of all distinct date in saledate column

select saledate , max(totalamount)[max sale] from sales
group by saledate