SELECT cd.bookings.starttime, cd.members.firstname, cd.members.surname FROM cd.bookings
JOIN cd.members 
ON cd.members.memid = cd.bookings.memid
WHERE firstname LIKE 'David' AND surname LIKE 'Farrell'
ORDER BY starttime ASC
