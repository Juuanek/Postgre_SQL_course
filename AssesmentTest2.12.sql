SELECT bookings.facid, SUM(slots) AS total FROM cd.bookings

GROUP BY facid 
ORDER BY SUM(slots) < 1000
LIMIT 5








