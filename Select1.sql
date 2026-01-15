SELECT track_name, duration
FROM track 
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT track_name, duration
FROM track 
WHERE duration >= 210
ORDER BY duration;

SELECT collection_name, collection_release
FROM collection 
WHERE collection_release BETWEEN 2018 AND 2020
ORDER BY collection_release;

SELECT name
FROM artist 
WHERE name NOT LIKE '% %';


SELECT track_name 
FROM track 
WHERE track_name ILIKE 'my'
   OR track_name ILIKE 'my %'
   OR track_name ILIKE '% my'
   OR track_name ILIKE '% my %'
   OR track_name ILIKE 'мой'
   OR track_name ILIKE 'мой %'
   OR track_name ILIKE '% мой'
   OR track_name ILIKE '% мой %';