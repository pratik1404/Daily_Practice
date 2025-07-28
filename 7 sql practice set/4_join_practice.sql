select * from Customers

select * from Orders

select * from Products



--1) Identify pairs of customers who live in the same country
select distinct a.customerid , a.customername,b.customername , a.country from Customers as a left join Customers as b on a.country = b.country where a.customerid > b.customerid  and a.customerid <> b.customerid


--2) Find the customer who has spent the most on their orders
select top 1 c.customerid , c.customername , sum(p.price) as max_spend from Customers as c  
left join orders as o on c.customerid = o.customerid 
left join Products as p on o.productid = p.productid
group by c.customerid , c.customername
order by sum(p.price) desc



--3) Find customers who have ordered more than one type of products
select c.customerid ,c.customername  , count(o.productid) from customers as c inner join orders as o on c.customerid = o.customerid 
group by c.customerid , c.customername
having count(o.productid) > 1

--4) List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered.
select o.orderid , p.productid , p.productname , p.price from orders as o right join  products as p on o.productid = p.productid 
-- where o.orderid is null

--5) Retrieve all orders placed by customers from the USA.

select * from customers as c inner join orders as o on o.customerid = c.customerid 
where country in ('usa')

--6) Find the names of customers who have ordered a product priced above $500.

select distinct c.customername from customers as c inner join orders as o on c.customerid = o.customerid inner join products as p on o.productid = p.productid 
where p.price > 500 


--7) Find customers who have ordered the same product more than once.

select distinct m.customername from
(
select c.customerid ,c.customername ,productid  , count(o.orderid) [total product count] from customers as c inner join orders as o on c.customerid = o.customerid 
group by c.customerid , c.customername , productid
having count(o.orderid) > 1) as m

