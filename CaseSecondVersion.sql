SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second place'
	ELSE 'Normal'
END AS raffle_results

FROM customer