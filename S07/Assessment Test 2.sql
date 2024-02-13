SELECT * FROM cd.facilities

SELECT name, membercost FROM cd.facilities

SELECT * FROM cd.facilities
WHERE membercost > 0

SELECT * FROM cd.facilities
WHERE membercost > 0 AND membercost < monthlymaintenance/50

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%'

SELECT * FROM cd.facilities
WHERE facid IN (1,5)

SELECT * FROM cd.members
WHERE joindate > '2012-09-01'

SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10

SELECT MAX(joindate) FROM cd.members

SELECT COUNT(*) from cd.facilities
WHERE guestcost > 10

SELECT fac.facid, SUM(book.slots)
FROM cd.facilities fac
JOIN cd.bookings book ON fac.facid = book.facid
WHERE book.starttime BETWEEN '2012-09-01' and '2012-10-01'
GROUP BY fac.facid
ORDER BY SUM(book.slots)

SELECT fac.facid, SUM(book.slots)
FROM cd.facilities fac
JOIN cd.bookings book ON fac.facid = book.facid
GROUP BY fac.facid
HAVING SUM(book.slots) > 1000
ORDER BY fac.facid

SELECT book.starttime, fac."name"
FROM cd.facilities fac
JOIN cd.bookings book ON fac.facid = book.facid
WHERE fac.name LIKE '%Tennis Court%'
AND book.starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY book.starttime

SELECT book.starttime
FROM cd.bookings book
JOIN cd.members mem ON book.memid = mem.memid
WHERE mem.firstname = 'David' AND mem.surname = 'Farrell'