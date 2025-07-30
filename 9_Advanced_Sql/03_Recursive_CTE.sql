-- Recursive concept 
-- Factorial of number 




with [r cte] as (
-- anchor query
select 1 as n

union all 

-- recursive query
select n+1 from [r cte] where n < 5
)
select * from [r cte] 

/* output
1
2
3
4
5
*/
--------------------------------------------------------------------------------
-- what if we go with 3 jump ?
--------------------------------------------------------------------------------


with [r cte] as (
-- anchor query
select 1 as n

union all 

-- recursive query
select n+3 from [r cte] where n <= 5 
)
select * from [r cte] 



/*
o/p
1
4
7
🔍 Step-by-step Execution:
🔸 Step 1: Anchor runs first
n = 1


🔸 Step 2: Recursive starts
Now it checks:

SELECT n+3 FROM [r cte] WHERE n <= 5
Now n = 1, and 1 ≤ 5 ⇒ ✅ TRUE
So:

1 + 3 = 4
Now r cte has:

1
4


🔸 Step 3: Next recursive step:
Now n = 4 (last generated value)
Check: 4 <= 5 ⇒ ✅ TRUE
So:

4 + 3 = 7
Now r cte becomes:

1
4
7
🔸 Step 4: Next recursive step:
Now n = 7
Check: 7 <= 5 ⇒ ❌ FALSE

So recursion stops here.

*/




-- Factorial of number 

with [fact] as (
-- anchor query
select 1 as n

union all
-- recursive query
select n+1 from [fact] where n < 5
)
select exp(sum(log(n))) from [fact]

--output is in floating because it is common floating point error in sql 

-- Handling this error 


-- Factorial of number 

with fact as 
(
    select 1 as n

    union ALL
    
    select n+1 from [fact] where n < 6

)
select round(exp(sum(log(n))),0) from [fact] 


-- star pattern 

WITH Stars AS (
    SELECT 1 AS n, CAST('*' AS VARCHAR(MAX)) AS pattern
    UNION ALL
    SELECT n + 1, pattern + '*'
    FROM Stars
    WHERE n < 5
)
SELECT pattern FROM Stars;



