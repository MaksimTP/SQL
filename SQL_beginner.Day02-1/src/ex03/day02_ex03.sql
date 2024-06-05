
-- Please write a SQL statement which returns the missing days from 1st to 10th of January 2022 (including all days)
-- for visits  of persons with identifiers 1 or 2 (it means days missed by both). Please order by visiting
-- days in ascending mode.
-- The sample of data with column name is presented below.

WITH gen AS (
    SELECT gen::date
    FROM GENERATE_SERIES('2022-01-01', '2022-01-10', interval '1 day') as gen
)

SELECT gen::date as missing_date
FROM (SELECT * FROM person_visits po WHERE person_id = 1 or person_id = 2) as po
RIGHT JOIN gen on po.visit_date = gen
WHERE po.id is NULL
ORDER BY 1

