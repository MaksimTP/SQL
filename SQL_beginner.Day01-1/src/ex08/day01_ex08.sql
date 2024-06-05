SELECT order_date, name || ' (age:' || age || ')' as person_information
FROM
    (SELECT name, age, id as person_id
     FROM person) as person
NATURAL JOIN person_order
ORDER BY 1,2;