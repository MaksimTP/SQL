WITH andrey_vis AS (
    SELECT pizzeria_id
    FROM person_visits
    JOIN person p on p.id = person_visits.person_id
    WHERE p.name = 'Andrey'
), andrey_ord AS (
    SELECT m.pizzeria_id
    FROM person_order
    JOIN person p on p.id = person_order.person_id
    JOIN menu m on person_order.menu_id = m.id
    WHERE p.name = 'Andrey'
)




SELECT pizzeria.name as pizzeria_name
FROM (
(SELECT *
FROM andrey_vis
EXCEPT
SELECT *
FROM andrey_ord)) as t
JOIN pizzeria on id = t.pizzeria_id
ORDER BY 1