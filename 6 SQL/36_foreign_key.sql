select * from test_primary_key



create table test_foreign_key (
    id int FOREIGN key REFERENCES test_primary_key (id) ,
    cources varchar(256)
)


insert into test_foreign_key values 
    (1 , 'data analyst'),
    (2 , 'statistics' ) 

select * from test_foreign_key


insert into test_foreign_key 
values 
(1 , 'IT'),
(2 , 'CS')


insert into test_foreign_key 
values 
(3, 'cs')   -- this will generate the issue because we dont have 3 in out primary key table 



-- If table already created 



create table test_foreign_key_3(
    id int ,
    course varchar(256)
)


alter table test_foreign_key_3
add FOREIGN key (id) REFERENCES test_primary_key(id)


insert into test_foreign_key 
values 
(1 , 'IT'),
(2 , 'CS')



-- This statment will generate the error 
insert into test_foreign_key 
values 
(6 , 'IT') 