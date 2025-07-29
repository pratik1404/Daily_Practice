
--  isnull() concept


select * from customers


select 
email, phonenumber , address ,
isnull(email , 'no email') as [refine email coln.],
isnull(PhoneNumber, 'Ph No NA') as [refined phonenumber coln.]
from customers

--coalesce concept 

select 
customerid , firstname , lastname , 
coalesce(email, phonenumber , 'Contact not available'  ) as [coalesce function]
from Customers


