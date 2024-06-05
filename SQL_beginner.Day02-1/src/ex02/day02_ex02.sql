SELECT CASE WHEN p.name is NULL then '-' ELSE p.name END AS person_name,
       visit_date,
       CASE WHEN pizzeria.name is NULL then '-' ELSE pizzeria.name END AS pizzeria_name
FROM pizzeria
FULL JOIN (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') as pv ON pv.pizzeria_id = pizzeria.id
FULL JOIN person as p ON pv.person_id = p.id
ORDER BY 1,2,3;

