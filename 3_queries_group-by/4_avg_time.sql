SELECT students.name, AVG(duration) as avg_assignment_duration
FROM assignment_submissions JOIN students ON (students.id = student_id)
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(duration) DESC;