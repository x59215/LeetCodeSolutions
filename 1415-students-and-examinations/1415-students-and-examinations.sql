# Write your MySQL query statement below
SELECT 
    stu.student_id,
    stu.student_name,
    sub.subject_name,
    COUNT(ex.student_id) AS attended_exams 
FROM Students stu
CROSS JOIN Subjects sub
LEFT JOIN Examinations ex
    ON sub.subject_name = ex.subject_name AND stu.student_id = ex.student_id 
GROUP BY 
    stu.student_id,
    stu.student_name,
    sub.subject_name
ORDER BY stu.student_id,
    stu.student_name