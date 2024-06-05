SELECT m1.pizza_name as pizza_name,p1.name as pizzeria_name_1, p2.name as pizzeria_name_2,  m1.price
FROM menu m1
INNER JOIN menu m2 on m1.price = m2.price and m1.pizzeria_id > m2.pizzeria_id and m1.pizza_name = m2.pizza_name
JOIN pizzeria p1 on p1.id = m1.pizzeria_id
JOIN pizzeria p2 on p2.id = m2.pizzeria_id
ORDER BY 1