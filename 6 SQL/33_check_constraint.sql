/*
✅ What is a CHECK Constraint?
A CHECK constraint is used to enforce a condition on the values in a column (or multiple columns).
If the condition is not met, SQL Server will block the insert or update.

🧪 Example: age SMALLINT CHECK (age > 18)
This means:

Only values greater than 18 can be inserted into the age column.

Values like 19, 25, 60 → ✅ accepted.

Values like 17, 18, -1, NULL → ❌ rejected.

*/

create table test_check(
    id int ,
    firstname varchar(256),
    age tinyint check (age>=18)
)


insert into test_check values 
(1, 'pratik' , 20)


select * from test_check

insert into test_check values 
(1, 'pratik' , 1)


