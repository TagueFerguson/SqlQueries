--liquibase formatted sql

--changeset converter:baseline dbms:mysql,mariadb context:dev runOnChange:true

DELETE FROM Artist;
DELETE FROM ArtistInstance;
DELETE FROM Genre;
DELETE FROM GenreAssign;
DELETE FROM RecordLabel;
DELETE FROM RecordLabelAssign;
DELETE FROM TypeOfArtist;
DELETE FROM TypeOfArtistAssign;

INSERT INTO Artist
VALUES
    (1, "SOLO ARTIST", now(), "me", null, null),
    (2, "BAND", now(), "me", null, null),
    (3, "ORCHESTRA", now(), "me", null, null),
    (4, "MANAGER", now(), "me", null, null),
    (5, "ROADIE", now(), "me", null, null);

INSERT INTO ArtistInstance
VALUES
    (1, 1, "Kate Bush", now(), "me", null, null),
    (2, 2, "Led Zeppelin", now(), "me", null, null),
    (3, 2, "Black Sabbath", now(), "me", null, null),
    (4, 1, "Leonard Cohen", now(), "me", null, null);


INSERT INTO Genre
VALUES
    (1, "Metal", now(), "me", null, null),
    (2, "Rock", now(), "me", null, null),
    (3, "Folk", now(), "me", null, null),
    (4, "Pop", now(), "me", null, null);

INSERT INTO GenreAssign
VALUES
    (1, 4, 1, now(), "me", null, null),
    (2, 3, 4, now(), "me", null, null),
    (3, 1, 3, now(), "me", null, null),
    (4, 2, 2, now(), "me", null, null);


INSERT INTO RecordLabel
VALUES
    (1, "Atlantic", now(), "me", null, null),
    (2, "Swan Song Records", now(), "me", null, null),
    (3, "Vertigo", now(), "me", null, null),
    (4, "Warner Bros.", now(), "me", null, null),
    (5, "I.R.S. Records", now(), "me", null, null),
    (6, "EMI", now(), "me", null, null),
    (7, "Harvest", now(), "me", null, null),
    (8, "EMI America", now(), "me", null, null),
    (9, "Columbia", now(), "me", null, null),
    (10, "Fish People", now(), "me", null, null),
    (11, "Concord", now(), "me", null, null),
    (12, "Passport", now(), "me", null, null),
    (13, "Sony", now(), "me", null, null),
    (14, "Legacy", now(), "me", null, null);

INSERT INTO RecordLabelAssign
VALUES
    (1, 3, 3, now(), "me", null, null),
    (2, 4, 3, now(), "me", null, null),
    (3, 5, 3, now(), "me", null, null),
    (4, 1, 2, now(), "me", null, null),
    (5, 2, 2, now(), "me", null, null),
    (6, 6, 1, now(), "me", null, null),
    (7, 7, 1, now(), "me", null, null),
    (8, 8, 1, now(), "me", null, null),
    (9, 10, 1, now(), "me", null, null),
    (10, 9, 1, now(), "me", null, null),
    (11, 9, 4, now(), "me", null, null),
    (12, 4, 4, now(), "me", null, null),
    (13, 12, 4, now(), "me", null, null),
    (14, 13, 4, now(), "me", null, null),
    (15, 14, 4, now(), "me", null, null);

INSERT INTO TypeOfArtist
VALUES
    (1, "LOUD", "VOLUME", now(), "me", null, null),
    (2, "QUIET", "VOLUME", now(), "me", null, null),
    (3, "MULTIPLE", "PERSONNEL", now(), "me", null, null),
    (4, "SINGULAR", "PERSONNEL", now(), "me", null, null),
    (5, "MUSICIAN", "ROLE", now(), "me", null, null),
    (6, "NONE-MUSICIAN", "ROLE", now(), "me", null, null);

INSERT INTO TypeOfArtistAssign
VALUES
    (1, 1, 1, now(), "me", null, null),
    (2, 2, 2, now(), "me", null, null),
    (3, 2, 3, now(), "me", null, null),
    (4, 3, 2, now(), "me", null, null),
    (5, 3, 3, now(), "me", null, null),
    (6, 4, 1, now(), "me", null, null),
    (7, 5, 1, now(), "me", null, null),
    (8, 5, 2, now(), "me", null, null),
    (9, 5, 3, now(), "me", null, null),
    (10, 6, 4, now(), "me", null, null),
    (11, 6, 5, now(), "me", null, null);


