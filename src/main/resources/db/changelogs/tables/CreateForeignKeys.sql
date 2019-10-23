--liquibase formatted sql

--changeset converter:baseline dbms:mysql,mariadb runOnChange:true

ALTER TABLE ArtistInstance
ADD FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId);

ALTER TABLE GenreAssign
ADD FOREIGN KEY (GenreId) REFERENCES Genre(GenreId);

ALTER TABLE GenreAssign
ADD FOREIGN KEY (ArtistInstanceId) REFERENCES ArtistInstance(ArtistInstanceId);

ALTER TABLE RecordLabelAssign
ADD FOREIGN KEY (RecordLabelId) REFERENCES RecordLabel(RecordLabelId);

ALTER TABLE RecordLabelAssign
ADD FOREIGN KEY (ArtistInstanceId) REFERENCES ArtistInstance(ArtistInstanceId);

ALTER TABLE TypeOfArtistAssign
ADD FOREIGN KEY (TypeOfArtistId) REFERENCES TypeOfArtist(TypeOfArtistId);

ALTER TABLE TypeOfArtistAssign
ADD FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId);
