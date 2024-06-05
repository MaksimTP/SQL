SELECT DISTINCT (SELECT name FROM person WHERE id = person_order.person_id)
FROM person_order
ORDER BY 1
