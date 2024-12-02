-- a) Describe all tables.

DESC;

-- b) Select all data on all tables.
SELECT * FROM main.country c ;
SELECT * FROM main.film f ;
SELECT * FROM main.category c ;
SELECT * FROM main.payment p ;


-- c) Find out how many rows there are in each table.

SELECT COUNT(*) FROM main.customer_list cl ;

-- d) Calculate descriptive statistics on film length.

SELECT SUM(length) / COUNT(title) FROM main.film; 



-- e) What are the peak rental times?

SELECT
	strftime('%H',
	rental_date ) AS time_rental,
	COUNT(rental_date) AS rental_count
FROM
	main.rental
GROUP BY
	time_rental
ORDER BY
	rental_count
	DESC
;



-- f) What is the distribution of film ratings?

SELECT * FROM main.film;

SELECT COUNT(RATING) AS rate_count, rating from main.film f 
GROUP BY rating
ORDER BY rate_count DESC; 


-- g) Who are the top 10 customers by number of rentals?

SELECT * FROM main.customer c ;	

SELECT * FROM main.rental ;
SELECT * FROM main.inventory i ;
SELECT * FROM main.film f ;
;



SELECT 
	c.customer_id , 
	c.first_name,
	c.last_name ,
	COUNT(r.customer_id) AS num_rental
FROM 
	main.customer c
INNER JOIN main.rental r ON
	c.customer_id = r.customer_id
GROUP BY
	c.first_name,
	c.last_name,
	c.customer_id ,
ORDER BY
	num_rental DESC
--;





-- h) Retrieve a list of all customers and what films they have rented.



-- i) Make a more extensive EDA of your choice on the Sakila database.
	
	
	
	
	SELECT
	'Customer' AS type,
	c.first_name,
	c.last_name
FROM
	main.customer c
WHERE
	LOWER( c.first_name) LIKE 'j%' AND LOWER(c.last_name) LIKE 'd%'
UNION 
	SELECT
	'Actor',
	a.first_name,
	a.last_name AS type,
FROM
	main.actor a
WHERE
	LOWER( a.first_name) LIKE 'j%' AND LOWER(a.last_name) LIKE '%d' ;


