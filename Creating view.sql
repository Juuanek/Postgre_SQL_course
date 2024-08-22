CREATE VIEW custmer_info AS
SELECT first_name, last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id