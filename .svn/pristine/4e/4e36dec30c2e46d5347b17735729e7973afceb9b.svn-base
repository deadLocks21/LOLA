DROP SCHEMA PROJET_TUTORE;

CREATE SCHEMA IF NOT EXISTS PROJET_TUTORE;

USE PROJET_TUTORE;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE Software
(
	idSoftware INTEGER PRIMARY KEY,
	name VARCHAR(100),
   	version VARCHAR(100),
   	urltuto VARCHAR(100),
	urlsetup VARCHAR(100), /*Lien vers le dl*/
	comment VARCHAR(100)
);

CREATE TABLE Sector 
(
	idSector INT PRIMARY KEY,
	name VARCHAR(100) /* IQ S2 ou LP ISAM etc*/
);

CREATE TABLE Course /* Matière */
(
	idCourse INT PRIMARY KEY NOT NULL,
	code VARCHAR(100), /*ex : M3124 etc */
	name VARCHAR(100),
	idSector INT,
	CONSTRAINT idSector FOREIGN KEY (idSector) REFERENCES sector(idSector)
);



CREATE TABLE Software_Course
(
	idSoftware INT,
	idCourse INT,
	PRIMARY KEY (idSoftware, idCourse),
	CONSTRAINT idSoftware FOREIGN KEY (idSoftware ) REFERENCES software(idSoftware),
	CONSTRAINT idCourse FOREIGN KEY (idCourse ) REFERENCES Course(idCourse)
);


CREATE TABLE User
(
	idUser INT PRIMARY KEY,
	login VARCHAR(100),
	password VARCHAR(100),
    name VARCHAR(100),
    email VARCHAR(100)
);

	
CREATE TABLE Type
(
	idType INT,
	name VARCHAR(100),
	CONSTRAINT idType FOREIGN KEY (idType) REFERENCES User(idUser)
);

CREATE TABLE Manage
(
	idUser INT,
	idCourse INT,
	PRIMARY KEY (idUser, idCourse),
	CONSTRAINT idUser_ FOREIGN KEY (idUser ) REFERENCES User(idUser),
	CONSTRAINT idCourse_ FOREIGN KEY (idCourse ) REFERENCES Course(idCourse)
);