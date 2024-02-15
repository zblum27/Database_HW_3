--Write a query that lists all the customers that listen to longer-than-average tracks, excluding the tracks that are longer than 15 minutes. 
SELECT c.customer_id, c.first_name, c.last_name, t.name, t.milliseconds
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
JOIN invoice_line il ON i.invoice_id = il.invoice_id
JOIN track t ON il.track_id = t.track_id
WHERE t.milliseconds > (SELECT AVG(milliseconds) FROM track WHERE milliseconds < 900000)
ORDER BY c.customer_id;
