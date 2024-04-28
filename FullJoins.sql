SELECT customer.email, address.district FROM customer
FULL OUTER JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'California'