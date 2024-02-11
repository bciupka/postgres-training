SELECT
	COUNT(*)
FROM
	payment
WHERE
	amount > 5.0;
	
SELECT
	COUNT(first_name)
FROM
	actor
WHERE
	first_name LIKE 'P%';
	
SELECT
	COUNT(DISTINCT district)
FROM
	address;

SELECT
	DISTINCT district
FROM
	address;
	
SELECT
	COUNT(*)
FROM
	film
WHERE
	rating = 'R'
	AND replacement_cost BETWEEN 5.0 AND 15.0;
	
SELECT
	COUNT(*)
FROM
	film
WHERE
	title LIKE '%Truman%';
