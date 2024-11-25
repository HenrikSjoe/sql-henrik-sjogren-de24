SELECT
	*
FROM
	main.data_jobs;

CREATE TABLE IF NOT EXISTS cleaned_salaries AS (
SELECT
	job_title,
	salary_in_usd * 10.93 AS salary_annual_sek,
	ROUND(salary_in_usd * 10.93 / 12) AS salary_monthly_sek,
	CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END AS employment_type,
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
	remote_ratio
FROM
	main.data_jobs
);





SELECT
	job_title,
	salary_in_usd * 10.93 AS salary_annual_sek,
	ROUND(salary_in_usd * 10.93 / 12) AS salary_monthly_sek,
	CASE
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END AS employment_type,
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
	remote_ratio
FROM
	main.data_jobs;


	
