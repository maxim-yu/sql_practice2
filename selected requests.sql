--название и год выхода альбомов, вышедших в 2018 году;

SELECT album_name, year_of_release 
FROM album 
WHERE year_of_release = 2018;


--название и продолжительность самого длительного трека;

SELECT track_name, duration 
FROM track
WHERE duration = (SELECT max(duration) FROM track)

--название треков, продолжительность которых не менее 3,5 минуты;

SELECT track_name, duration 
FROM track 
WHERE duration >= '03:30'

--названия сборников, вышедших в период с 2018 по 2020 год включительно;

SELECT collection_name, year_of_release
FROM collection
WHERE year_of_release BETWEEN 2018 AND 2020

--исполнители, чье имя состоит из 1 слова;

SELECT artist_name
FROM artist 
WHERE artist_name NOT LIKE '% %'

--название треков, которые содержат слово “мой”/“my”.

SELECT track_name
FROM track
WHERE track_name LIKE '%my%' OR track_name LIKE '%мой%'; 