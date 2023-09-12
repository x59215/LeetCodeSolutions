# Write your MySQL query statement below
SELECT a1.machine_id,
  ROUND(
        (SELECT AVG(a2.timestamp) FROM activity a2 where a2.activity_type = 'end' and a1.machine_id = a2.machine_id) -
        (SELECT AVG(a2.timestamp) FROM activity a2 where a2.activity_type = 'start'and a1.machine_id = a2.machine_id),3) as processing_time
FROM activity a1
GROUP BY a1.machine_id