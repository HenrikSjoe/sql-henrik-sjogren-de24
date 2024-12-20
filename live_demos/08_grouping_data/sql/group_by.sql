SELECT
	*
FROM
	main.cleaned_food;

-- 10 most searched foods
SELECT
	food,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	food
ORDER BY
	total_searches DESC
LIMIT 10;

-- total searches by year
SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
ORDER BY
	total_searches DESC
LIMIT 10;

SELECT DISTINCT year FROM main.cleaned_food
ORDER BY year;


SELECT
	year,
	SUM(number_searches) AS total_searches
FROM
	main.cleaned_food
GROUP BY
	year
HAVING 
	total_searches > 300000
ORDER BY
	total_searches DESC;


-- most popular food in summer
SELECT
	food,
	SUM(number_searches) AS searches,
	week 
FROM
	main.cleaned_food
WHERE
	week BETWEEN '20' AND '35'
GROUP BY
	food,
	week
ORDER BY
	searches DESC;



-- most popular food in winter
SELECT
	food,
	SUM(number_searches) AS searches,
	week 
FROM
	main.cleaned_food
WHERE
	week NOT BETWEEN '20' AND '35'
GROUP BY
	food,
	week
ORDER BY
	searches DESC;
