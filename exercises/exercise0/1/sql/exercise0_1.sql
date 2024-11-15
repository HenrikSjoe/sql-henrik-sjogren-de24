-- b)
SELECT
	*
FROM
	hemnet_data;
-- b)
SELECT
	*
FROM
	hemnet_data
WHERE
	address LIKE 'A%';
-- c)
SELECT
	COUNT(*)
FROM
	hemnet_data;
-- d)
DESC;
-- e)
SELECT
	*
FROM
	hemnet_data
ORDER BY
	final_price DESC
LIMIT 5;
-- f)
SELECT
	*
FROM
	hemnet_data
ORDER BY
	final_price
LIMIT 5;
-- g)
SELECT 
	MIN(final_price) as min_price,
	round(AVG(final_price)) as mean_price,
	MEDIAN(final_price) as median_price,
	MAX(final_price) as max_price
FROM
	hemnet_data;
-- h)
SELECT 
	MIN(price_per_area) as min_price,
	round(AVG(price_per_area)) as mean_price,
	MEDIAN(price_per_area) as median_price,
	MAX(price_per_area) as max_price
FROM
	hemnet_data;
--i)
SELECT
	COUNT(DISTINCT commune)
FROM
	hemnet_data;
-- j)
SELECT
	(COUNT(final_price) FILTER (
WHERE
	final_price > 10000000) * 100.0) / COUNT(final_price) AS percentage_above_10M
FROM
	main.hemnet_data;
