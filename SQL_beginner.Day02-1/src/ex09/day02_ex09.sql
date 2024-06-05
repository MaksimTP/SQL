SELECT p.name
FROM person p
INNER JOIN person_order po on p.id = po.person_id
INNER JOIN public.menu m on m.id = po.menu_id
WHERE p.gender = 'female' and m.pizza_name = 'pepperoni pizza'
INTERSECT
SELECT p.name
FROM person p
INNER JOIN person_order po on p.id = po.person_id
INNER JOIN public.menu m on m.id = po.menu_id
WHERE p.gender = 'female' and m.pizza_name = 'cheese pizza'
ORDER BY 1