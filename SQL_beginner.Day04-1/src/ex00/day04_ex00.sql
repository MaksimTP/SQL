CREATE VIEW v_persons_female as
    SELECT * FROM person
    WHERE gender = 'female';

CREATE VIEW v_persons_male as
    SELECT * FROM person
    WHERE gender = 'male';