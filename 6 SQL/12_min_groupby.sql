select * from sales 

select min(quantity)[min quantity] from sales 

select min(saledate) [min sales date] from sales 

select min(paymentmethod)[min payment method] from sales

select storeid , min(totalamount)[min total amount] from sales 
group by storeid

    