-- create and select the database
DROP DATABASE IF EXISTS sda;
CREATE DATABASE sda;
USE sda;

-- create the Stuffy table
CREATE TABLE Stuffy (
  ID			INT            PRIMARY KEY  AUTO_INCREMENT,
  Type          VARCHAR(10)    NOT NULL,
  Color			VARCHAR(10)    NOT NULL,
  Size			VARCHAR (10)   NOT NULL	,
  Limbs			INT			   NOT NULL
);


-- insert some rows into the Stuffy table
INSERT INTO Stuffy VALUES
(1, 'dog', 'blue', 'large', 4),
(2, 'cat', 'green', 'small', 4),
(3, 'dragon', 'purple', 'medium', 6),
(4, 'snail', 'yellow', 'x-large', 1),
(5, 'platypus', 'blue', 'medium', 4),
(6, 'octopus', 'purple', 'large', 8),
(7, 'squirrel', 'brown', 'small', 4),
(8,'starfish', 'pink', 'x-large', 5),
(9, 'lobster', 'red', 'large', 10),
(10, 'spider', 'clear', 'small', 8);


-- create a user and grant privileges to that user
CREATE USER sda_user@localhost IDENTIFIED BY 'sesame';
GRANT SELECT, INSERT, DELETE, UPDATE ON sda.* TO sda_user@localhost;
