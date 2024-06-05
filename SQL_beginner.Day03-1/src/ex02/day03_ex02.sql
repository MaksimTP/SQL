
SELECT pizza_name, price, p.name
FROM menu
INNER JOIN public.pizzeria p on menu.pizzeria_id = p.id
WHERE menu.id IN (
SELECT id
FROM menu EXCEPT
SELECT menu_id
FROM person_order
)
ORDER BY 1,2;
