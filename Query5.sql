--Write a query that lists all the tracks that are not in one of the top 5 genres with longer duration in the database. 
WITH TopGenres AS
    (
    SELECT 
        g.name Genre,
        COUNT(t.track_id) Tracks
    FROM genre g
    LEFT JOIN track t ON g.genre_id = t.genre_id
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 5
    )

    SELECT t.name Track, g.name Genre, t.milliseconds Duration
    FROM track t
    JOIN genre g ON t.genre_id = g.genre_id
    WHERE g.name NOT IN (SELECT Genre FROM TopGenres)
    ORDER BY 3 DESC
    LIMIT 10; 