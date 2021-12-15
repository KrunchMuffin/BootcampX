SELECT s.id, s.name
FROM students s
INNER JOIN cohorts c ON s.cohort_id = c.id
WHERE c.id = 4
ORDER BY name