SELECT
	customer_id, COUNT(*) AS amount
FROM
	payment
GROUP BY
	customer_id
HAVING
	COUNT(*) >= 40
	
SELECT
	customer_id, SUM(amount) as sum_cash
FROM
	payment
WHERE
	staff_id = 2
GROUP BY
	customer_id, staff_id
HAVING
	SUM(amount) > 100