SELECT
	*
FROM
	staging.sql_glossary;


-- array-like slicing
SELECT
	sql_word,
	sql_word[:2],
	sql_word[2:5]
FROM
	staging.sql_glossary;


-- getitem[] IN sql index starts at 1
SELECT
	sql_word,
	sql_word[0],
	sql_word[1],
	sql_word[-1]
FROM
	staging.sql_glossary;


-- concatenation
SELECT
	'fun' || 'joke'

SELECT
	'SQL command: ' || sql_word,
FROM
	staging.sql_glossary sg ;


-- remove spaces
SELECT
	trim(sql_word) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;
	

SELECT
	UPPER(trim(sql_word)) AS trimmed_word,
	trimmed_word[1],
	trimmed_word[-1]
FROM
	staging.sql_glossary;
	

SELECT
	description,
	replace(trim(description), '  ', ' ') 
FROM
	staging.sql_glossary; 
	





