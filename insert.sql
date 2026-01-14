INSERT INTO genre(genre_name) 
VALUES
    ('Metal'),
    ('Rock'),
    ('Pop'),
    ('Indie'),
    ('Alternative');


INSERT INTO artist(name) 
VALUES
    ('Judas Priest'),
    ('AC/DC'),
    ('Michael Jackson'),
    ('Imagine Dragons'),
    ('Linkin park');

INSERT INTO artist_genre(id_artist, id_genre) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 2),
    (4, 3),
    (4, 4),
    (5, 2),
    (5, 5);

INSERT INTO album(album_name, release_year) 
VALUES
    ('Angel of Retribution', 2005),
    ('Who Made Who', 1986),
    ('Thriller', 1982),
    ('Origins', 2018),
    ('Minutes to Midnight', 2007);

INSERT INTO track(track_name, duration, id_album) 
VALUES
    ('Angel', 263, 1),
    ('Lochness', 808, 1),
    ('Judas Rising', 255, 1),
    ('You Shook Me All Night Long', 210, 2),
    ('Hells Bells', 312, 2),
    ('For Those About to Rock We Salute You', 353, 2),
    ('Thriller', 357, 3),
    ('Billie Jean', 294, 3),
    ('Human Nature', 246, 3),
    ('Natural', 189, 4),
    ('Machine', 181, 4),
    ('Bad Lia', 260, 4),
    ('Bleed It Out', 164, 5),
    ('What I’ve Done', 205, 5),
    ('No More Sorrow', 221, 5),
    ('The Lady in My Life', 300, 3);

INSERT INTO album_artist(id_album, id_artist) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO collection(collection_name, collection_release) 
VALUES
    ('Rock Legends', 2005),
    ('Best Rock Hits 2018', 2018),
    ('Pop Classics 2019', 2019),
    ('Throwback Mix 2020', 2020),
    ('Summer Hits 2010', 2010),
    ('Greatest Hits of 90s', 1999);

INSERT INTO collection_tracks(id_collection, id_track) 
VALUES
    (1, 1),
    (1, 5),
    (1, 6),
    (2, 1),
    (2, 4),
    (2, 10),
    (3, 7),
    (3, 8),
    (3, 14),
    (4, 2),
    (4, 5),
    (4, 9),
    (5, 4),
    (5, 7),
    (5, 10),
    (6, 7),
    (6, 8),
    (6, 9);
