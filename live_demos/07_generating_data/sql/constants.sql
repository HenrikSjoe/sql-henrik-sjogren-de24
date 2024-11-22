SELECT
	42 AS meaning_of_life;

SELECT
	42;
VALUES (1),
(2),
(3);

CREATE TABLE IF NOT EXISTS people_records AS (
SELECT
	*
FROM
	(
VALUES (1,
'Johan'),
(2,
'Henrik'),
(3,
'Karin')) AS people(id,
	name));

desc;

SELECT * FROM people_records;