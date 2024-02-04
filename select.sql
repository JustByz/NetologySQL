-- Task 2

SELECT track_name, track_duration from tracks
WHERE TRACK_DURATION = (SELECT MAX(TRACK_DURATION) FROM TRACKS);

SELECT track_name FROM tracks
WHERE track_duration >= 210; 

SELECT collection_name FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT performer_name FROM performers
WHERE performer_name NOT LIKE '% %';

SELECT track_name FROM tracks
WHERE track_name ilike '%my%';

-- Task 3

SELECT g.genre_name, COUNT(performer_id) FROM genreperformer gp
JOIN genre g ON gp.genre_id = g.id
GROUP BY g.genre_name;

SELECT count(track_name) FROM tracks t
JOIN albums a ON t.album_id = a.id 
WHERE a.album_year BETWEEN 2019 AND 2020;

SELECT a.album_name, ROUND(AVG(track_duration)) FROM tracks AS t 
JOIN albums a ON t.album_id = a.id 
GROUP BY a.album_name;

SELECT p.performer_name FROM albums a 
JOIN performersalbums pa  ON  a.id = pa.album_id
JOIN performers p ON pa.performer_id = p.id
WHERE a.album_year != 2020;

SELECT DISTINCT c.collection_name FROM performers p 
JOIN performersalbums pa ON pa.performer_id = p.id
JOIN albums a ON a.id = pa.album_id 
JOIN tracks t ON t.album_id = a.id
JOIN trackscollections tc ON tc.track_id = t.id 
JOIN collections c  ON c.id = tc.collection_id
WHERE p.performer_name = 'Nirvana';