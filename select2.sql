SELECT g.genre_name, COUNT(ag.id_artist) as artist_count
FROM genre g
LEFT JOIN artist_genre ag ON g.id_genre = ag.id_genre
GROUP BY g.genre_name
ORDER BY artist_count DESC;

SELECT COUNT(t.id_track) as track_count
FROM track t
JOIN album a ON t.id_album = a.id_album
WHERE a.release_year BETWEEN 2018 AND 2019;

SELECT a.album_name, AVG(t.duration) as avg_duration
FROM album a
JOIN track t ON a.id_album = t.id_album
GROUP BY a.id_album, a.album_name
ORDER BY avg_duration DESC;

SELECT ar.name AS artist_name
FROM artist ar
WHERE ar.id_artist NOT IN (
    SELECT DISTINCT aa.id_artist
    FROM album_artist aa
    JOIN album al ON aa.id_album = al.id_album
    WHERE al.release_year = 2020);


SELECT DISTINCT c.collection_name
FROM collection c
JOIN collection_tracks ct ON c.id_collection = ct.id_collection
JOIN track t ON ct.id_track = t.id_track
JOIN album a ON t.id_album = a.id_album
JOIN album_artist aa ON a.id_album = aa.id_album
JOIN artist ar ON aa.id_artist = ar.id_artist
WHERE ar.name = 'Judas Priest';
