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
    idSector INT,
    CONSTRAINT idSector2 FOREIGN KEY (idSector) REFERENCES Sector(idSector)
);



CREATE TABLE Teacher
(
	idTeacher INT PRIMARY KEY,
    idUser INT,
	Name VARCHAR(100),
	Email VARCHAR(100),
    CONSTRAINT idUser FOREIGN KEY (idUser) REFERENCES User(idUser)
);
	
CREATE TABLE Teacher_Course
(
	idTeacher INT,
	idCourse INT,
	PRIMARY KEY (idTeacher, idCourse),
	CONSTRAINT idTeacher FOREIGN KEY (idTeacher) REFERENCES Teacher(idTeacher),
	CONSTRAINT idCourse2 FOREIGN KEY (idCourse) REFERENCES Course(idCourse)
);

INSERT INTO software VALUES (1, "MySQL Workbench", "8.0",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.zip",
"Client MySql");
INSERT INTO software VALUES (2, "TortoiseSVN", "1.14",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.zip",
"Client Subversion (SVN)");
INSERT INTO software VALUES (3, "Visual Paradigm", "16.1",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.zip",
"Conception UML");
INSERT INTO software (idSoftware, name, version, urlsetup, comment) VALUES (
4, "Virtual Box", "6.1",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/virtualbox.zip",
"Hyperviseur");

INSERT INTO sector VALUES (1, "IQ S1");
INSERT INTO sector VALUES (2, "IQ S2");
INSERT INTO sector VALUES (3, "IQ S3");
INSERT INTO sector VALUES (4, "IQ S4");
INSERT INTO sector VALUES (5, "LMP");

INSERT INTO Course VALUES (1, "M2103", "Programmation orientée objets", 2);
INSERT INTO Course VALUES (2, "M2104", "Conception orientée objets", 2);
INSERT INTO Course VALUES (3, "M3105", "Conception et programmation objet avancées", 3);
INSERT INTO Course VALUES (4, "M3106", "Bases de données", 3);
INSERT INTO Course VALUES (5, "M3101", "Systèmes d'exploitation", 3);
INSERT INTO Course VALUES (6, "M2106", "Bases de données", 2);

INSERT INTO Software_Course VALUES (1, 4);
INSERT INTO Software_Course VALUES (1, 6);
INSERT INTO Software_Course VALUES (2, 1);
INSERT INTO Software_Course VALUES (2, 2);
INSERT INTO Software_Course VALUES (2, 3);
INSERT INTO Software_Course VALUES (3, 2);
INSERT INTO Software_Course VALUES (3, 3);
INSERT INTO Software_Course VALUES (4, 5);

INSERT INTO User VALUES (1, "aa546211", "azerty123", 1);
INSERT INTO User VALUES (2, "bb142585", "qsdfgh147", 1);
INSERT INTO User VALUES (3, "cc145798", "poiuyt589", 1);
INSERT INTO User VALUES (4, "dd124578", "nbvcxw145", 3);
INSERT INTO User VALUES (5, "ee415263", "mlkjhg159", 3);
INSERT INTO User VALUES (6, "ff147589", "asdcvb258", 3);
INSERT INTO User VALUES (7, "gg148693", "poikjh357", 5);
INSERT INTO User VALUES (8, "hh459525", "jhguio781", 5);
INSERT INTO User (idUser, login, password) VALUES (9, "ag748596", "hgtyui546"); -- Professeur
INSERT INTO User (idUser, login, password) VALUES (10, "pd472536", "nbhjui145"); -- Professeur
INSERT INTO User (idUser, login, password) VALUES (11, "sr146891", "njkiuy159"); -- Professeur
INSERT INTO User (idUser, login, password) VALUES (12, "ks148924", "hgdspm147"); -- Professeur
INSERT INTO User (idUser, login, password) VALUES (13, "yb471536", "nbgfzu816"); -- Professeur
INSERT INTO User (idUser, login, password) VALUES (14, "cc473658", "kjhgfs508"); -- Professeur

INSERT INTO Teacher VALUES (1, 9, "Alexandre Guidet", "Alexandre.Guidet@iut-dijon.u-bourgogne.fr");
INSERT INTO Teacher VALUES (2, 10, "Patrice Doussot", "patrice.doussot@iut-dijon.u-bourgogne.fr");
INSERT INTO Teacher VALUES (3, 11, "Sylvain Rampacek", "Sylvain.Rampacek@iut-dijon.u-bourgogne.fr");
INSERT INTO Teacher VALUES (4, 12, "Karine Serier", "karine.serier@iut-dijon.u-bourgogne.fr");
INSERT INTO Teacher VALUES (5, 13, "Yannick Benezeth", "yannick.benezeth@iut-dijon.u-bourgogne.fr");
INSERT INTO Teacher VALUES (6, 14, "Christophe Cruz", "Christophe.Cruz@iut-dijon.u-bourgogne.fr");

INSERT INTO Teacher_Course VALUES (1, 1);
INSERT INTO Teacher_Course VALUES (1, 2);
INSERT INTO Teacher_Course VALUES (1, 3);
INSERT INTO Teacher_Course VALUES (2, 1);
INSERT INTO Teacher_Course VALUES (2, 2);
INSERT INTO Teacher_Course VALUES (3, 1);
INSERT INTO Teacher_Course VALUES (4, 4);
INSERT INTO Teacher_Course VALUES (4, 6);
INSERT INTO Teacher_Course VALUES (5, 4);
INSERT INTO Teacher_Course VALUES (6, 5);