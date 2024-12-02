DESC;

-- film: film_id
SELECT * FROM main.film f ;

DESC TABLE main.film ;

SELECT COUNT(*) AS num_movies, COUNT(DISTINCT title) AS unique_titles FROM main.film ;

SELECT DISTINCT rating FROM main.film;

-- film_actor: actor_id abd film_id
SELECT * FROM main.film_actor fa ;

--actor: actor_id and first_name and last_name
SELECT * FROM main.actor a ;


-- film_category: film_id and category_id
SELECT * FROM main.film_category fc ;


-- category: category_id
SELECT * FROM main.category c ;


-- customer: customer_id, store_id
SELECT * FROM main.customer c ;


SELECT
	store_id,
	COUNT(*) AS num_customers
FROM
	main.customer c
GROUP BY
	store_id
ORDER BY
	store_id ASC;

SELECT * FROM main.store s ;