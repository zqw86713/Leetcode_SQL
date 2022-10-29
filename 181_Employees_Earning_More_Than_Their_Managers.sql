-- Approach 1: Using WHERE clause [Accepted]
SELECT
    a.Name AS 'Employee'
FROM
    Employee AS a,
    Employee AS b
WHERE
    a.ManagerId = b.Id
    AND a.Salary > b.Salary;


-- Approach 2: Using JOIN clause [Accepted]

SELECT
    a.NAME AS Employee
FROM
    Employee AS a
    JOIN Employee AS b ON a.ManagerId = b.Id
    AND a.Salary > b.Salary;

