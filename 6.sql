SELECT amount,customer_id FROM payment
WHERE amount!=0.00
ORDER BY payment_date ASC
LIMIT 10;
