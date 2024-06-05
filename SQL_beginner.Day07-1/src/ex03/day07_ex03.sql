WITH count_visits AS (
    SELECT (SELECT name FROM pizzeria WHERE id = person_visits.pizzeria_id) as name, COUNT(*)
    FROM person_visits
    GROUP BY pizzeria_id),

count_orders as (
    SELECT (SELECT name FROM pizzeria WHERE id = po.pizzeria_id) as name, COUNT(*)
    FROM (
    SELECT pizzeria_id
    FROM person_order
    JOIN public.menu m on m.id = person_order.menu_id) as po
    GROUP BY po.pizzeria_id
    )

SELECT co.name, co.count + cv.count as total_count
FROM count_orders co
JOIN count_visits cv on co.name = cv.name
ORDER BY total_count DESC, co.name