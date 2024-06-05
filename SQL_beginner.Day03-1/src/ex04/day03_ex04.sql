WITH tab_male AS (
    SELECT pizzeria_id
    FROM person_order po
    JOIN person p on po.person_id = p.id
    JOIN menu m on m.id = po.menu_id
    WHERE gender = 'male'
),
    tab_female AS (
    SELECT pizzeria_id
    FROM person_order po
    JOIN person p on po.person_id = p.id
    JOIN menu m on m.id = po.menu_id
    WHERE gender = 'female'
)

SELECT pizzeria.name
FROM (
    (
    SELECT *
    FROM tab_female
    EXCEPT
    SELECT *
    FROM tab_male
)
    UNION
(
    SELECT *
    FROM tab_male
    EXCEPT
    SELECT *
    FROM tab_female
)
) as t
JOIN pizzeria on id = t.pizzeria_id
ORDER BY 1