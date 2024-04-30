SELECT COUNT(EXTRACT(DOW FROM payment_date)) AS payments_on_mondays FROM payment 
WHERE EXTRACT(DOW FROM payment_date) = 1;



