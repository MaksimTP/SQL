SELECT m.pizza_name, pi.name
FROM person_order as po
INNER JOIN person p on p.id = po.person_id
INNER JOIN menu m on m.id = po.menu_id
INNER JOIN pizzeria pi on pi.id = m.pizzeria_id
WHERE p.name = 'Anna' or p.name = 'Denis'
ORDER BY 1,2