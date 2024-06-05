WITH appropriate_prices as (
    SELECT m.pizza_name, m.price, p2.name as pizzeria_name, pizzeria_id
    FROM menu m
    JOIN pizzeria p2 on m.pizzeria_id = p2.id
    WHERE price BETWEEN 800 AND 1000
)

SELECT ap.pizza_name, ap.price, ap.pizzeria_name, visit_date
FROM person_visits pv
INNER JOIN person p on pv.person_id = p.id
RIGHT JOIN appropriate_prices ap on ap.pizzeria_id = pv.pizzeria_id
WHERE p.name = 'Kate'
ORDER BY 1,2,3