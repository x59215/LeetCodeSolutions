# Write your MySQL query statement below
SELECT v.customer_id, count(v.visit_id) as count_no_trans
FROM visits v
LEFT join transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id  is null
GROUP BY v.customer_id