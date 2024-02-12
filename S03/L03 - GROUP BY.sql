SELECT
	staff_id, COUNT(staff_id) AS amount
FROM
	payment
GROUP BY
	staff_id
	
SELECT
	rating, AVG(replacement_cost) AS avg_repl_cost
FROM
	film
GROUP BY
	rating

SELECT
	customer_id, SUM(amount) as sum_of_pay
FROM
	payment
GROUP BY
	customer_id
ORDER BY
	SUM(amount) DESC
LIMIT 5
	