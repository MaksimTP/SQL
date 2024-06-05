SELECT address,
       ROUND(MAX(age) - MIN(age) / CAST(MAX(age) as DEC(5, 2)), 2) as formula,
       ROUND(AVG(age), 2) as average,
       CASE WHEN MAX(age) - MIN(age) / CAST(MAX(age) as DEC(5, 2)) > AVG(age) then 'true' ELSE 'false' END as comparison
FROM person
GROUP BY address
ORDER BY 1