DESC;

-- film table
SELECT * FROM main.film;

DESC TABLE main.film;

SELECT 
	count(*) AS number_movies,
	count(DISTINCT title) AS unique_number_movies
FROM
	main.film;



SELECT * FROM main.film;

SELECT DISTINCT rating FROM main.film;


-- film actor
SELECT * from main.film_actor;

DESC TABLE main.film_actor;

-- actor
SELECT * FROM main.actor;


-- catecory

SELECT * FROM main.category;

SELECT * FROM main.film_category;

SELECT
	'customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	c.first_name LIKE 'D%';






