SELECT p.name
FROM person p
INNER JOIN person_order po on p.id = po.person_id
INNER JOIN menu m on m.id = po.menu_id
WHERE p.gender = 'male' and p.address in ('Moscow', 'Samara') and pizza_name in ('pepperoni pizza', 'mushroom pizza')
ORDER BY 1 DESC