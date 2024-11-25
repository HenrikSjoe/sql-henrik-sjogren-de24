SELECT
	*
FROM
	main.data_jobs;

CREATE TABLE IF NOT EXISTS cleaned_salaries AS (
SELECT
	salary_in_usd * 10.93 AS salary_annual_sek,
	ROUND(salary_in_usd * 10.93 / 12) AS salary_monthly_sek,
	CASE
		WHEN experience_level = 'SE' THEN 'Senior'
		WHEN experience_level = 'MI' THEN 'Mid level'
		WHEN experience_level = 'EN' THEN 'Entry level'
		WHEN experience_level = 'EX' THEN 'Expert'
	END AS experience_level, 
	CASE
		WHEN company_size = 'S' THEN 'Small'
		WHEN company_size = 'M' THEN 'Medium'
		WHEN company_size = 'L' THEN 'Large'
	END AS company_size , 
	CASE
		WHEN salary_monthly_sek < 30000 THEN 'Low'
		WHEN salary_monthly_sek BETWEEN 30000 AND 65000 THEN 'Medium'
		WHEN salary_monthly_sek BETWEEN 65000 AND 200000 THEN 'High'
		WHEN salary_monthly_sek > 200000 THEN 'Insanely high'
	END AS salary_level,
	* EXCLUDE (experience_level,
	company_size,
	work_year,
	salary,
	salary_in_usd,
	salary_currency,
	employee_residence,
	company_location),
FROM
	main.data_jobs
	)


SELECT * FROM main.cleaned_salaries
