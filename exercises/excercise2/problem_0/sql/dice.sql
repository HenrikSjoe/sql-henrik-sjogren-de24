-- a) Generate 10 rows of dice rolls data
SELECT
	FLOOR(RANDOM()* 6 + 1) AS dice
FROM
	generate_series(1,
	10);
-- b) Calculate the average of getting a six
SELECT
	FLOOR(RANDOM()* 6 + 1) AS dice
FROM
	generate_series(1,
	10)
;
-- b) Calculate the average of getting a six
SELECT
	AVG(CASE WHEN FLOOR(RANDOM() * 6 + 1)
    = 6 THEN 1 ELSE 0 END)* 100 AS average_six
FROM
	generate_series(1,
	10);
--   c) Generate 100 rows of dice rolls and calculate average of getting a six
SELECT
	AVG(CASE WHEN FLOOR(RANDOM() * 6 + 1)
    = 6 THEN 1 ELSE 0 END)* 100 AS average_six
FROM
	generate_series(1,
	100);
--   d) Repeat the experiment with 1000, 10000, 100000, 1000000 rolls.

 SELECT
	AVG(CASE WHEN FLOOR(RANDOM() * 6 + 1)
    = 6 THEN 1 ELSE 0 END)* 100 AS average_six
FROM
	generate_series(1,
	10000);
-- e) What is the theoretical mean?
   1 / 6