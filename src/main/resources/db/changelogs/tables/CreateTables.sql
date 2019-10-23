--liquibase formatted sql

--changeset converter:baseline dbms:mysql,mariadb runOnChange:true

DROP TABLE IF EXISTS PlaceOfOrigin, Artist, ArtistGroup, ArtistGroupAssign, RecordAssign,
    RecordGroupAssign, ArtistInstance, ArtistIdentifier;

CREATE TABLE Artist
(
    ArtistId            BIGINT NOT NULL AUTO_INCREMENT,
    ArtistName          VARCHAR(256) NOT NULL,
    CreatedDate         DATETIME NOT NULL,
    CreatedBy           VARCHAR(256),
    ModifiedDate        DATETIME NULL,
    ModifiedBy          VARCHAR(128),
    PRIMARY KEY (ArtistId)
);

CREATE TABLE ArtistInstance
(
    ArtistInstanceId            BIGINT NOT NULL AUTO_INCREMENT,
    ArtistId                    BIGINT NOT NULL,
    ArtistInstanceName          VARCHAR(100),
    CreatedDate                 DATETIME NOT NULL,
    CreatedBy                   VARCHAR(256),
    ModifiedDate                DATETIME NULL,
    ModifiedBy                  VARCHAR(128),
    PRIMARY KEY (ArtistInstanceId)
);

CREATE TABLE ArtistIdentifier
(
    ArtistIdentifierId          BIGINT NOT NULL AUTO_INCREMENT,
    ArtistId                    BIGINT NOT NULL,
    ArtistIdentifierCode        VARCHAR(256) NOT NULL,
    CreatedDate                 DATETIME NOT NULL,
    CreatedBy                   VARCHAR(256),
    ModifiedDate                DATETIME NULL,
    ModifiedBy                  VARCHAR(128),
    PRIMARY KEY (ArtistIdentifierId)
);

CREATE TABLE Genre
(
    GenreId                 BIGINT NOT NULL AUTO_INCREMENT,
	GenreName               VARCHAR(256) NOT NULL,
	CreatedDate             DATETIME NOT NULL,
	CreatedBy               VARCHAR(100) NOT NULL,
	ModifiedDate            DATETIME NULL,
	ModifiedBy              VARCHAR(100) NULL,
	PRIMARY KEY (GenreId)
);

CREATE TABLE GenreAssign
(
	GenreAssignId    BIGINT NOT NULL AUTO_INCREMENT,
	GenreId          BIGINT NOT NULL,
	ArtistInstanceId        BIGINT NOT NULL,
	CreatedDate             DATETIME NOT NULL,
	CreatedBy               VARCHAR(100) NOT NULL,
	ModifiedDate            DATETIME NULL,
	ModifiedBy              VARCHAR(100) NULL,
	PRIMARY KEY (GenreAssignId)
);

CREATE TABLE RecordLabel
(
    RecordLabelId           BIGINT NOT NULL AUTO_INCREMENT,
    RecordLabelName         VARCHAR(256) NOT NULL,
	CreatedDate             DATETIME NOT NULL,
	CreatedBy               VARCHAR(100) NOT NULL,
	ModifiedDate            DATETIME NULL,
	ModifiedBy              VARCHAR(100) NULL,
	PRIMARY KEY (RecordLabelId)
);

CREATE TABLE RecordLabelAssign
(
    RecordLabelAssignId     BIGINT NOT NULL AUTO_INCREMENT,
    RecordLabelId           BIGINT NOT NULL,
    ArtistInstanceId        BIGINT NOT NULL,
	CreatedDate             DATETIME NOT NULL,
	CreatedBy               VARCHAR(100) NOT NULL,
	ModifiedDate            DATETIME NULL,
	ModifiedBy              VARCHAR(100) NULL,
	PRIMARY KEY (RecordLabelAssignId)
);

CREATE TABLE TypeOfArtist
(
    TypeOfArtistId              BIGINT NOT NULL AUTO_INCREMENT,
    TypeOfArtistCode            VARCHAR(200) NOT NULL,
	TypeOfArtistName            VARCHAR(256) NOT NULL,
	CreatedDate                 DATETIME NOT NULL,
	CreatedBy                   VARCHAR(100) NOT NULL,
	ModifiedDate                DATETIME NULL,
	ModifiedBy                  VARCHAR(100) NULL,
	PRIMARY KEY (TypeOfArtistId)
);

CREATE TABLE TypeOfArtistAssign
(
    TypeOfArtistAssignId    BIGINT NOT NULL AUTO_INCREMENT,
	TypeOfArtistId          BIGINT NOT NULL,
	ArtistId                BIGINT NOT NULL,
	CreatedDate             DATETIME NOT NULL,
	CreatedBy               VARCHAR(100) NOT NULL,
	ModifiedDate            DATETIME NULL,
	ModifiedBy              VARCHAR(100) NULL,
	PRIMARY KEY (TypeOfArtistAssignId)
);

