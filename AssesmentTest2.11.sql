SELECT bookings.facid, SUM(slots) AS total FROM cd.bookings
WHERE starttime > (DATE '01-09-2012')
GROUP BY facid 
ORDER BY facid 








