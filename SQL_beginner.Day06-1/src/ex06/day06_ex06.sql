CREATE SEQUENCE seq_person_discounts
START WITH 1
INCREMENT 1;

SELECT setval('seq_person_discounts', (SELECT COUNT(*) FROM person_discounts))

SELECT nextval('seq_person_discounts')