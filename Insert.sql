INSERT INTO genre(genre_name)
VALUES ('Jazz'), ('Rock'), ('Country');

INSERT INTO performers(performer_name)
VALUES ('Five finger death punch'), ('Nirvana'), ('Johny Cash'), ('Louis Armstrong');

INSERT INTO albums(album_name, album_year)
VALUES ('War is the answer', 2009), ('Nevermind', 1991), ('Unchained', 1986), ('The great summit', 1961);

INSERT INTO tracks (track_name, track_duration, album_id)
VALUES ('Hard To See', 209, 1), ('Burn It Down', 213, 1), ('Polly', 184, 2), ('Lithium', 257, 2), ('Country Boy', 151, 3);

INSERT INTO tracks (track_name, track_duration, album_id)
VALUES ('Mood Indigo', 240, 4), ('My Own Hell', 215, 1),('Так надо', 273, 6), ('Чувства', 226, 6);

INSERT INTO collections(collection_name, collection_year)
VALUES ('The Great One', 2019), ('Every Day', 2003), ('My choice', 2020), ('Gold', 1998);

INSERT INTO genreperformer(genre_id, performer_id)
VALUES (1, 4), (2, 1), (2, 2), (3, 3), (2, 6);

INSERT INTO performersalbums(performer_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (6,6);

INSERT INTO trackscollections(track_id, collection_id)
VALUES (1, 1), (1, 2), (2, 4), (3, 3), (3, 4), (4, 1), (4, 3), (5, 1), (6, 2), (7, 2), (10, 3), (11, 4);