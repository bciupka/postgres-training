SELECT
	customer_id, SUM(amount) as sum_cash
FROM
	payment
WHERE
	staff_id = 2
GROUP BY
	customer_id
HAVING
	SUM(amount) > 110

SELECT
	COUNT(*) as films
FROM
	film
WHERE
	title LIKE 'J%'

SELECT
	first_name, last_name
FROM
	customer
WHERE
	first_name LIKE 'E%'
	AND address_id < 500
ORDER BY
	customer_id DESC
	