SELECT p.name as name, pizza_name, price, price * (1 - discount/100) as discount_price, p2.name as pizzeria_name
    FROM person_discounts
JOIN public.person p on p.id = person_discounts.person_id
JOIN public.menu m on person_discounts.pizzeria_id = m.pizzeria_id
JOIN public.pizzeria p2 on person_discounts.pizzeria_id = p2.id
ORDER BY 1,2