SELECT DISTINCT
	TO_CHAR(payment_date, 'month') AS pay_month
FROM
	payment

SELECT
	COUNT(*)
FROM
	payment
WHERE
	TO_CHAR(payment_date, 'dy') = 'mon'

SELECT
	COUNT(*)
FROM
	payment
WHERE
	EXTRACT(dow FROM payment_date) = 1