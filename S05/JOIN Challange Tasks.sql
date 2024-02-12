SELECT
	adr.district, cus.email
FROM
	customer cus
	JOIN address adr ON cus.address_id = adr.address_id
WHERE
	adr.district = 'California'
	OR adr.district = 'california'
	
SELECT
	f.title
FROM
	film f
	JOIN film_actor fa ON f.film_id = fa.film_id
	JOIN actor ac ON ac.actor_id = fa.actor_id
WHERE
	ac.first_name = 'Nick'
	AND ac.last_name = 'Wahlberg'

