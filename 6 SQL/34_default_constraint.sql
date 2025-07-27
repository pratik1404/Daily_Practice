-- Default constriant is used to set the default value to the columns
-- In case their is no value to insert so by default value will get inserted.


create table test_default(
    id int ,
    firstname varchar(256),
    age tinyint default (18)
)


insert into test_default (id , firstname)
values 
(1, 'hehe')

select * from test_default


insert into test_default 
values 
(2, 'Tanjiro' , null)


select * from test_default



insert into test_default 
values 
(2, 'Tanjiro')  -- will still through error 