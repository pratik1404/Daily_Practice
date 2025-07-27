use CONSTRAIN


create table unique_table(
    id int unique ,
    firstname varchar(50),
    lastname varchar(60),
    age tinyint ,
    phone varchar(15) unique
)

insert into unique_table
values 
(1, 'john' , 'wick' , 35 , '1234567890'),
(2, 'eve' , 'samsung' , 23 , '87654321')

select * from unique_table


insert into unique_table
values 
(1, 'diana' , 'hamilton' , 35 , '1234567890')

/*
Started executing query at Line 19
Msg 2627, Level 14, State 1, Line 2
Violation of UNIQUE KEY constraint 'UQ__unique_t__B43B145FA022BB46'. Cannot insert duplicate key in object 'dbo.unique_table'. The duplicate key value is (1234567890).
The statement has been terminated.
Total execution time: 00:00:00.013
*/