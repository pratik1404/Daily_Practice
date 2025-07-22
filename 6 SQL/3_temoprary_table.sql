SELECT * FROM Employees

SELECT * INTO #temp1  -- This single hash (#) is used to create Local table
FROM [dbo].[Employees]

SELECT * FROM #temp1 -- This will be executed in current windows ,but will not execute in another query window.

SELECT * INTO ##temp2 -- This double hash (##)is use dot create Global table 
FROM [dbo].[Employees]

SELECT * FROM ##temp2 -- This will be executed in current windows and also execute in another query window.