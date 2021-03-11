-- =====================================================================================================================
-- Use this file to initialize a database at container startup.
-- =====================================================================================================================

CREATE DATABASE SeriesPicker;
USE SeriesPicker;

CREATE TABLE SeriesPicker.User
(
    userID    INT          NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(64)  NOT NULL,
    lastName  VARCHAR(64)  NOT NULL,
    username  VARCHAR(64)  NOT NULL,
    password  VARCHAR(255) NOT NULL,
    createdAt DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (userID),
    UNIQUE User_firstName_UC (firstName),
    UNIQUE User_lastName_UC (lastName),
    UNIQUE User_username_UC (username)
) ENGINE = InnoDB;

INSERT INTO User (firstName, lastName, username, password)
VALUES ('System', 'User', 'root', '$2y$10$5Y3ALDzA5SWRPN/8u4vHJ.cl2B/j6yY4O3EpqSJQ9kvMB1zjebdhq');

CREATE TABLE SeriesPicker.Information
(
    userID  INT     NOT NULL,
    tvID    INT     NOT NULL,
    watched BOOLEAN NULL,
    likes   BOOLEAN NULL,
    CONSTRAINT Information_userID_FK FOREIGN KEY (userID) REFERENCES User (userID)
) ENGINE = InnoDB;

INSERT INTO Information (userID, tvID, watched, likes) VALUE (1, 85271, TRUE, TRUE);
