SELECT m.pizza_name as pizza_name, p.name as pizzeria_name, m.price as price
FROM menu m, pizzeria as p
WHERE m.pizzeria_id = p.id AND pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza'
ORDER BY 1,2
