SELECT customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40;