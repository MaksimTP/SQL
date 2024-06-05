SELECT (SELECT name FROM pizzeria WHERE id = person_visits.pizzeria_id) as name, COUNT(*), 'visit' as action_type
FROM person_visits
GROUP BY pizzeria_id
UNION
SELECT (SELECT name FROM pizzeria WHERE id = po.pizzeria_id), COUNT(*), 'order' as action_type
FROM (
SELECT pizzeria_id
FROM person_order
JOIN public.menu m on m.id = person_order.menu_id) as po
GROUP BY po.pizzeria_id
ORDER BY 3, 2 DESC