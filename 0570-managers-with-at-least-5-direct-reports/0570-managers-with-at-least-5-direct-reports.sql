# Write your MySQL query statement below
SELECT 
  name 
FROM 
  employee 
WHERE 
  id IN (
    SELECT 
      managerid 
    FROM 
      Employee 
    GROUP BY 
      managerid 
    HAVING 
      COUNT(id) >= 5
  )