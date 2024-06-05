WITH tab_male AS (
    SELECT pizzeria_id
    FROM person_visits pv
    JOIN person p on pv.person_id = p.id
    WHERE gender = 'male'
),
    tab_female AS (
    SELECT pizzeria_id
    FROM person_visits pv
    JOIN person p on pv.person_id = p.id
    WHERE gender = 'female'
)

SELECT pizzeria.name
FROM (
    (SELECT *
        FROM tab_female
    EXCEPT ALL
    SELECT *
        FROM tab_male
    )
    UNION ALL
    (SELECT *
        FROM tab_male
    EXCEPT ALL
    SELECT *
        FROM tab_female
    )
) as t
JOIN pizzeria on id = t.pizzeria_id
ORDER BY 1