SELECT person.name as person_name, pizza_name, p.name as pizzeria_name
FROM person_order
LEFT JOIN public.menu m on person_order.menu_id = m.id
LEFT JOIN person on person_order.person_id = person.id
LEFT JOIN public.pizzeria p on m.pizzeria_id = p.id
ORDER BY 1,2,3
