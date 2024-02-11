SELECT
	customer_id
FROM
	payment
ORDER BY
	payment_date
LIMIT 10;

SELECT
	title, length
FROM
	film
ORDER BY
	length
LIMIT 5;

SELECT
	COUNT(title)
FROM
	film
WHERE
	length <= 50;
