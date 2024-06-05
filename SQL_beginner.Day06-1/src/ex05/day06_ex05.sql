COMMENT ON TABLE person_discounts IS 'Table that is showing discounts for persons who ordered pizza depending on the number of orders';
COMMENT ON COLUMN person_discounts.id IS 'id hehe';
COMMENT ON COLUMN person_discounts.person_id IS 'Foreign key for person table';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Foreign key for pizzeria table';
COMMENT ON COLUMN person_discounts.discount IS 'Discount (in percents) for a person with id = person_id in a pizzeria with id = pizzeria_id'
