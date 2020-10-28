CREATE DATABASE IF NOT EXISTS `client_refferals`;

USE `client_refferals`;

CREATE TABLE IF NOT EXISTS `REFFERAL` (
    `RefferalID`            INT(8)          NOT NULL,
    `Casehead`              VARCHAR(50)     NOT NULL,
    `ServiceRecipient`      VARCHAR(50)     NOT NULL,
    `ParentPhoneNumber`     CHAR(10)        NOT NULL,
    `ParentAddress`         VARCHAR(100)    NOT NULL,
    `VisitLocation`         VARCHAR(100)    NOT NULL,
    `VisitSchedule`         VARCHAR(50)     NOT NULL,
    `ConfirmationRequired`  BOOLEAN         NOT NULL,
    `CaregiverName`         VARCHAR(50)     NOT NULL,
    `CaregiverPhoneNumber`  CHAR(10)        NOT NULL,
    `CaregiverAddress`      VARCHAR(100)    NOT NULL,
    `AdditionalInfo`        VARCHAR(500),
    CONSTRAINT              `Refferal_PK`   PRIMARY KEY (`RefferalID`)
);

CREATE TABLE IF NOT EXISTS `PARTICIPANT` (
    `RefferalID`            INT(8)          NOT NULL,
    `ParticipantName`       VARCHAR(50)     NOT NULL,
    CONSTRAINT              `Refferal_Participant_FK`   FOREIGN KEY (`RefferalID`)
                            REFERENCES `REFFERAL`(`RefferalID`)
);

CREATE TABLE IF NOT EXISTS `CHILD` (
    `RefferalID`            INT(8)          NOT NULL,
    `ChildName`             VARCHAR(50)     NOT NULL,
    `ChildDOB`              DATE            NOT NULL,
    CONSTRAINT              `Refferal_Child_FK`   FOREIGN KEY (`RefferalID`)
                                REFERENCES `REFFERAL`(`RefferalID`)
);