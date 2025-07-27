create database CONSTRAIN

use constrain

-- creatign table with not null constraint
create table not_null_constrain (
    id int not null ,
    firstname varchar(256),
    age tinyint
)


insert into not_null_constrain
values 
(1, 'Zenitsu' , 17)


select * from not_null_constrain



insert into not_null_constrain 
values 
(2,null , null)

insert into not_null_constrain
values 
(null , 'muzan' , 28)

/*ERROR
 Msg 515, Level 16, State 2, Line 2
Cannot insert the value NULL into column 'id', table 'CONSTRAIN.dbo.not_null_connstrain'; column does not allow nulls. INSERT fails.
The statement has been terminated.
*/ -- because we have set the id as not null so it cannot be null


exec sp_rename 'not_null_connstrain' , 'not_null_constrain' 


-- case 2 :- Alter the table which is already created 
TRUNCATE TABLE not_null_constrain

alter table not_null_constrain
alter COLUMN age tinyint not null 


insert into not_null_constrain 
VALUES
(1, 'inoske', 18)

select * from not_null_constrain


alter table not_null_constrain
alter COLUMN firstname varchar(256) not null 

insert into not_null_constrain values 
(4, 'nezuko' , 14)

select * from not_null_constrain




-- Error queries 

insert into not_null_constrain 
VALUES
(1, 'inoske', null)


insert into not_null_constrain 
VALUES
(null, 'inoske', 18)


insert into not_null_constrain 
VALUES
(7, null , 18)
