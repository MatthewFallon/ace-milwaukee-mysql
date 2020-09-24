CREATE DATABASE IF NOT EXISTS client_database;

use client_database;

create table if not exists FAMILY (
    FAMILY_ID           Integer     NOT NULL,
    CONSTRAINT          FAMILY_ID_PK
        PRIMARY KEY     (FAMILY_ID)
);

create table if not exists CLIENT (
    CLIENT_NAME         char (30)   NOT NULL,
    CLIENT_ADDRESS      char (50)   NOT NULL,
    PHONE_NUMBER        char (10)   NOT NULL,
    VISIT_LOCATION      char (50)   NOT NULL,
    FAMILY_ID           Integer     NOT NULL,
    CONSTRAINT          CLIENT_FAMILY_ID_FK
        FOREIGN KEY     (FAMILY_ID)
        REFERENCES      FAMILY (FAMILY_ID)
);

create table if not exists CHILD (
    CHILD_NAME          char (30)   NOT NULL,
    AGE                 Integer   NOT NULL,
    CHILD_LOCATION      char (50)   NOT NULL,
    FAMILY_ID           Integer     NOT NULL,
    CONSTRAINT          CHILD_FAMILY_ID_FK
        FOREIGN KEY     (FAMILY_ID)
        REFERENCES      FAMILY (FAMILY_ID)
);

create table if not exists PARTICIPANT (
    PARTICIPANT_NAME          char (30)   NOT NULL,
    IS_ALLOWED                Boolean   NOT NULL,
    FAMILY_ID                 Integer     NOT NULL,
    CONSTRAINT          PARTICIPANT_FAMILY_ID_FK
        FOREIGN KEY     (FAMILY_ID)
        REFERENCES      FAMILY (FAMILY_ID)
);

DELIMITER $$
CREATE DEFINER=`root`@`%` PROCEDURE `get_for_family`(familyId int)
BEGIN

SELECT 
    ch.CHILD_NAME,  ch.AGE, ch.CHILD_LOCATION
FROM
    client_database.CHILD as ch
where
	FAMILY_ID = familyId;
    
SELECT 
    cl.CLIENT_NAME, cl.CLIENT_ADDRESS, cl.PHONE_NUMBER, cl.VISIT_LOCATION
FROM
    client_database.CLIENT as cl
where
	FAMILY_ID = familyId;
    
SELECT 
    p.PARTICIPANT_NAME, p.IS_ALLOWED
FROM
    client_database.PARTICIPANT as p
where
	FAMILY_ID = familyId;

END$$
DELIMITER ;
