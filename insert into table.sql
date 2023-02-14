INSERT INTO genre (genre_name)
VALUES 
	('pop'), 
	('rock'), 
	('disco'), 
	('electro'), 
	('blues'),
	('classic'), 
	('techno'), 
	('house'), 
	('dance'), 
	('newmetal'), 
	('hip-hop');
	
INSERT INTO artist (artist_name)
VALUES
	('simply red'),
	('tina turner'),
	('moby'),
	('inxs'),
	('boris brejcha'),
	('arctic lake'),
	('the doors'),
	('deep swing'),
	('wolfgang amadeus mozart'),
	('limp bizkit'),
	('mosca'),
	('ice cube'),
	('sleep relaxed');
	
INSERT INTO album (album_name, year_of_release)
VALUES 
	('picture_book', 1985),
	('whats love got to do with it', 1993),
	('play', 1995),
	('kick 30', 1987),
	('space gremlin', 2017),
	('house music', 2021),
	('waiting for the sun', 1968),
	('la woman 50th anniversary edition', 2021),
	('in the music', 2010),
	('mozart to sleep', 2018),
	('significant other', 1999),
	('elevator music', 2010),
	('war and peace', 2000),
	('relaxed music', 2018);

INSERT INTO collection (collection_name, year_of_release)
VALUES
	('music for elevators', 2019),
	('hh collection', 2005),
	('ibiza 2018', 2018),
	('techno collection', 2021),
	('rock hits', 1995),
	('80s-90s', 2019),
	('dad cd', 2014),
	('90s', 2020);

INSERT INTO track (album_id, track_name, duration)
VALUES 
	(1, 'money''s too tight', '00:04:30'),
	(1, 'picture book', '00:05:50'),
	(1, 'come to my aid', '00:04:05'),
	(2, 'disco inferno', '00:04:05'),
	(2, 'what''s love got to do with it', '00:03:50'),
	(3, 'find my baby', '00:03:59'),
	(3, 'natural blues', '00:04:15'),
	(4, 'devil inside', '00:03:56'),
	(5, 'space gremlin', '00:07:04'),
	(5, 'maximum overdrive', '00:09:40'),
	(6, 'house music', '00:03:00'),
	(7, 'five to one', '00:04:34'),
	(8, 'been down so long', '00:04:44'),
	(9, 'in the music', '00:07:20'),
	(10, 'eine kleine nachtmusik in g magor', '00:05:43'),
	(10, 'clarinet cocerto in a major', '00:08:55'),
	(11, 'nookie', '00:04:50'),
	(11, 'break stuff', '00:02:47'),
	(12, 'gold bricks, i see you', '00:03:29'),
	(13, 'we be clubbin', '00:03:50'),
	(14, 'beat to relax', '00:02:20'),
	(14, 'the beach', '00:02:49'),
	(14, 'rainy night', '00:03:44'),
	(14, 'night in the forest', '00:04:20');

INSERT INTO album_artist (album_id, artist_id)
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 5),
	(6, 6),
	(7, 7),
	(8, 7),
	(9, 8),
	(10, 9),
	(11, 10),
	(12, 11),
	(13, 12),
	(14, 13);

INSERT INTO collection_track (collection_id, track_id)
VALUES 
	(1, 15),
	(1, 16),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(2, 17),
	(2, 18),
	(2, 20),
	(3, 14),
	(3, 19),
	(4, 9),
	(4, 10),
	(4, 11),
	(5, 8),
	(5, 12),
	(5, 13),
	(6, 1),
	(6, 3),
	(6, 5),
	(7, 2),
	(7, 6),
	(8, 4),
	(8, 7);
	
INSERT INTO genre_artist (artist_id, genre_id)
VALUES 
	(1, 1),
	(1, 2),
	(2, 1),
	(2, 2),
	(3, 9),
	(3, 4),
	(4, 2),
	(5, 7),
	(5, 4),
	(5, 9),
	(6, 7),
	(6, 8),
	(6, 9),
	(6, 4),
	(7, 2),
	(8, 8),
	(8, 4),
	(8, 9),
	(9, 6),
	(10, 11),
	(10, 10),
	(11, 8),
	(11, 9),
	(12, 11),
	(13, 6);

UPDATE album 
SET year_of_release = 2019
WHERE album_id = 10;
	
UPDATE album 
SET year_of_release = 2020
WHERE album_id IN (6, 8);

UPDATE track 
SET duration = '00:02:20'
WHERE track_id IN (18, 24);

DELETE FROM collection_track 
WHERE track_id IN (16, 21);
