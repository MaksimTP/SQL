SELECT p1.name as person_name1, p2.name as person_name2, p1.address
FROM person as p1
INNER JOIN person as p2 on p1.id > p2.id
WHERE p1.address = p2.address
ORDER BY 1,2,3