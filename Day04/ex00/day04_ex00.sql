CREATE VIEW v_personal_female AS
SELECT *
FROM person
WHERE person.gender = 'female';
CREATE VIEW v_personal_male AS
SELECT *
FROM person
WHERE person.gender = 'male';

