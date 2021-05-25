SELECT AVG(total_duration) as average_total_duration
FROM (
SELECT cohorts.name, SUM(completed_at-started_at) AS total_duration
FROM assistance_requests JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration
) AS total_duration;