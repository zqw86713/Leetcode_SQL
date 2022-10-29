-- CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT BEGIN RETURN (
--     # Write your MySQL query statement below.
--     SELECT
--         salary
--     FROM
--         Employee
--     ORDER BY
--         salary DESC
--     LIMIT
--         1 OFFSET N
-- );

-- END



CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT 

BEGIN 
DECLARE M INT;

SET
    M = N -1;

RETURN (
    # Write your MySQL query statement below.
    SELECT
        DISTINCT Salary
    FROM
        Employee
    ORDER BY
        Salary DESC
    LIMIT
        M, 1
);

END