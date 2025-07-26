
--Copying Data From existing table to the New table

--Case 1 : The New table simply doesn't exist
--Case 2: The New table structure/New Table exists

--CASE 1 :
select * from dbo.Sales 

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
--same as that of dbo.sales table
select * into New_Table_1 from dbo.Sales

-------------------Certain Columns to be copied
drop table New_Table_1

select productid,quantity into new_table_1 from dbo.Sales

select * from new_table_1


--CASE 2 : New table structure/table already exists

select top 0 * into new_table_2 from dbo.Sales  --****************************

select * from new_table_2

insert into new_table_2 select * from dbo.Sales 

------Copying Certain Columns

select * into new_table_3 from dbo.Sales where 1=0  ---****************************

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from dbo.Sales
