# Write your MySQL query statement below
SELECT 
    e.name,
     b.bonus
FROM employee e
left JOIN bonus b
    ON e.empid = b.empid
WHERE b.bonus < 1000 or b.bonus IS NULL