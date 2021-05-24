SELECT students.name, AVG(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimate_duration
FROM students JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL;
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY AVG(avg_assignment_duration.duration)