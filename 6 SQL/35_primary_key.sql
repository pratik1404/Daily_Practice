-- Primary Key and foreign key concept

create table test_primary_key(
    id int primary key ,
    name varchar(256),
    age tinyint ,
    gender char(1)
)

insert into test_primary_key
(id , name , age , gender)
values 
(1, 'pratik' , 21 , 'M'),
(2, 'ram' , 26 , 'M'),
(4, 'sambhaji' , 54 , 'M'),
(5, 'manikarnika', 34 , 'F') 


select * from test_primary_key


/*
Started executing query at Line 20
Msg 2627, Level 14, State 1, Line 2
Violation of PRIMARY KEY constraint 'PK__test_pri__3213E83FDF03E880'. Cannot insert duplicate key in object 'dbo.test_primary_key'. The duplicate key value is (1).
The statement has been terminated.
Total execution time: 00:00:00.012
*/


insert into test_primary_key
(id , name , age , gender)
values 
(1, 'pratik' , 21 , 'M')




-- If table already being created then ...

alter table test_primary_key
add primary key (age)     -- this will give error that primary key is already being applied 


create table test_primary_key_2(
    id int not null unique,
    name varchar(256),
    age tinyint ,
    gender char(1)
)


-- Above is already created table 

alter table test_primary_key_2
add primary key (id)

insert into test_primary_key_2 
values 
(1, 'pratik' , 21 , 'M'),
(2, 'ramji' , 24, 'M'),
(3, 'manikarnika' , 32 , 'F')


select * from test_primary_key_2



insert into test_primary_key_2 
values 
(1, 'pratik' , 21 , 'M')