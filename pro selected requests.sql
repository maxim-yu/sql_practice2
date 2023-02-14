--количество исполнителей в каждом жанре;

SELECT genre_name, count(artist_id) FROM genre_artist
RIGHT JOIN genre ON genre_artist.genre_id = genre.genre_id
GROUP BY genre_name 
ORDER BY count(artist_id) DESC;

--количество треков, вошедших в альбомы 2019-2020 годов;

SELECT count(track_id) FROM track
JOIN album ON track.album_id = album.album_id 
WHERE year_of_release BETWEEN 2019 AND 2020;

--средняя продолжительность треков по каждому альбому;

SELECT album_name, avg(duration) FROM album
JOIN track ON album.album_id = track.album_id
GROUP BY album_name
ORDER BY avg(duration);

--все исполнители, которые не выпустили альбомы в 2020 году;

SELECT artist_name FROM artist
JOIN album_artist ON artist.artist_id = album_artist.artist_id 
JOIN album ON album_artist.album_id = album.album_id 
WHERE year_of_release <> 2018;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

SELECT DISTINCT collection_name FROM collection
JOIN collection_track ON collection.collection_id = collection_track.collection_id 
JOIN track ON collection_track.track_id = track.track_id 
JOIN album ON track.album_id = album.album_id 
JOIN album_artist ON album.album_id = album_artist.album_id 
JOIN artist ON album_artist.artist_id = artist.artist_id 
WHERE artist_name = 'moby';

--название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT album_name FROM album 
JOIN album_artist USING (album_id)
JOIN artist USING (artist_id)
JOIN genre_artist USING (artist_id)
GROUP BY album_name
HAVING count(genre_id) > 1;

--наименование треков, которые не входят в сборники;

SELECT track_name FROM track
LEFT JOIN collection_track ON track.track_id = collection_track.track_id 
WHERE collection_id IS NULL; 
 
--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

SELECT DISTINCT artist_name, duration FROM artist 
JOIN album_artist ON artist.artist_id = album_artist.artist_id 
JOIN track ON album_artist.album_id = track.album_id 
WHERE duration = (SELECT min(duration) FROM track);

--название альбомов, содержащих наименьшее количество треков.

SELECT album_name, count(track_id) AS number_of_songs
FROM album  
JOIN track USING(album_id)
GROUP BY album_name 
HAVING count(track_id) = (SELECT count(track_id) FROM track 
						  GROUP BY album_id
					      ORDER BY count(track_id)
        				  LIMIT 1)
ORDER BY album_name;
