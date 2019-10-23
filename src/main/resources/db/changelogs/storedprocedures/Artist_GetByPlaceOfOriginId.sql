--liquibase formatted sql

--changeset converter:baseline dbms:mysql,mariadb runOnChange:true endDelimiter://

DROP PROCEDURE IF EXISTS Artist_GetByPlaceOfOriginId//

CREATE PROCEDURE Artist_GetById(
    IN inArtistId varchar(50))
BEGIN

    DECLARE EXIT HANDLER FOR NOT FOUND
        SIGNAL SQLSTATE '02000'
			SET message_text = 'Artist not found from place of origin id';

	SELECT
	    *
    FROM
        Artist
    WHERE
        Artist.ArtistId = inArtistId;

END
//