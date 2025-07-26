create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)

create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append2 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)


select * from append1

select * from append2


/*

| Feature            | `UNION`                                  | `FULL OUTER JOIN`                      |
| ------------------ | ---------------------------------------- | -------------------------------------- |
| Combines data by   | **Rows**                                 | **Columns**                            |
| Based on matching? | No matching; just same structure         | Yes, based on `ON` condition           |
| Duplicates         | Removed (by default)                     | Not applicable                         |
| NULLs for no match | Not applicable                           | Yes                                    |
| Use case           | Merging results from two similar queries | Combining related data from two tables |

*/

/*
🔹 Use When?
Use UNION when combining similar result sets (like logs from two years).

Use FULL OUTER JOIN when you need a complete picture from both tables and want to see all matches and non-matches.



🟦 UNION
1) Combines rows from two tables.

2) Tables must have the same number of columns.

3) Think of it like copy-pasting rows from one table below the other.

4) Removes duplicates (use UNION ALL to keep them).


🟪 FULL OUTER JOIN
• Combines columns from two tables.

• Keeps all rows from both tables.

• If there's no match, it shows NULL for missing parts.
*/



-- union all does not remove duplicates

select * from append1
union ALL
select * From append2

select C1, C2, C3 from append1
union ALL
select C1, C2, C3 From append2


-- uniuon removes duplicates 

select * from append1 
union 
select * from append2k


-- Aliase name which are assigned to first select statement will be assigned to the column
select C1 as [column 1], C2 as [comumn 2], C3 as [column 3] from append1
union ALL
select C1 as [col1], C2 as [col12], C3 as [col3] From append2
