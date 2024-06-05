SELECT (SELECT name FROM person WHERE id = person_visits.person_id), COUNT(*) as count_of_visits
FROM person_visits
GROUP BY person_id
HAVING COUNT(*) > 3
ORDER BY count_of_visits DESC, person_id
