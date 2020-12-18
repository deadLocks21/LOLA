DROP SCHEMA IF EXISTS PROJET_TUTORE;

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
	CONSTRAINT idSector FOREIGN KEY (idSector) REFERENCES Sector(idSector)
);



CREATE TABLE Software_Course
(
	idSoftware INT,
	idCourse INT,
	PRIMARY KEY (idSoftware, idCourse),
	CONSTRAINT idSoftware FOREIGN KEY (idSoftware ) REFERENCES Software(idSoftware),
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

INSERT INTO Software VALUES (1, "Anaconda", "3",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.zip",
null);
INSERT INTO Software VALUES (2, "Android Studio", "4.0",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.zip",
"IDE complet pour développement Android");
INSERT INTO Software VALUES (3, "Apache Cordova", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/cordova.pdf",
null,
"Outil en ligne de commande. Nécessite Node.JS");
INSERT INTO Software VALUES (
4, "BaseIUT", "2020",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.zip",
"Installateur automatique pour divers logiciels de base (navigateurs, etc.)");
INSERT INTO Software VALUES (
5, "Freeplane", "1.8.5",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.zip",
"MIND-mapping. Nécessite Java.");
INSERT INTO Software VALUES (
6, "Git", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.zip",
null);
INSERT INTO Software VALUES (
7, "Hex editor neo", "6.44",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/hex-editor-neo.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/free-hex-editor-neo.zip",
"Editeur hexadécimal");
INSERT INTO Software VALUES (
8, "Java JDK 8", "8",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/java.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/jdk8.zip",
null);
INSERT INTO Software VALUES (
9, "Lazarus", "2.0",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.zip",
"IDE Pascal");
INSERT INTO Software VALUES (
10, "MCC18", "8.33",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB-C18-Std-Eval-v3_33.zip",
"Compilateur C pour PIC; MPLAB prérequis");
INSERT INTO Software VALUES (
11, "MPLAB IDE", "8.33",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB_IDE_8_33.zip",
"IDE pour PIC");
INSERT INTO Software VALUES (
12, "MS Expression web", "4.0",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Expression4.zip",
"Editeur HTML/CSS");
INSERT INTO Software VALUES (
13, "MS Office", "2019",
null,
null,
"Suite bureautique. ");
INSERT INTO Software VALUES (
14, "MS Project pro", "2019",
null,
null,
"Gestion de projet");
INSERT INTO Software VALUES (
15, "MS Visio pro", "2019",
null,
null,
"Dessin vectoriel, diagrammes");
INSERT INTO Software VALUES (
16, "MySQL Workbench", "8.0",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.zip",
"Client MySQL");
INSERT INTO Software VALUES (
17, "Netbeans", "8.2",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.zip",
"IDE Java. Nécessite un JDK");
INSERT INTO Software VALUES (
18, "Node.JS", "12.18",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.zip",
"Serveur web techno JS");
INSERT INTO Software VALUES (
19, "Open Cobol IDE", "4.7.3",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.zip",
"IDE pour Cobol");
INSERT INTO Software VALUES (
20, "Pencil", "3.1",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.zip",
"Outil pour réaliser des maquettes IHM");
INSERT INTO Software VALUES (
21, "Protégé", "5.5",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protégé.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protege.zip",
"Ontologies");
INSERT INTO Software VALUES (
22, "Proteus ISIS", null,
null,
null,
"Simulateur électronique");
INSERT INTO Software VALUES (
23, "Pyzo", "4.1",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pyzo.zip",
null);
INSERT INTO Software VALUES (
24, "QT", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.zip",
"IDE + framework complet C++, pour bureau et mobile");
INSERT INTO Software VALUES (
25, "Scilab", "5.5",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.zip",
"Outil de calcul math/physique");
INSERT INTO Software VALUES (
26, "Simulateur réseau", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/simulateur.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Simulateur.zip",
null);
INSERT INTO Software VALUES (
27, "SQLDeveloper", "19.2",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/SQLDeveloper.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sqldeveloper.zip",
"Client Oracle. Nécessite Java.");
INSERT INTO Software VALUES (
28, "SublimeText", "3",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sublime_text.zip",
null);
INSERT INTO Software VALUES (
29, "TableauDesktop", "2020",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tableau-public.zip",
"Visualisation de données");
INSERT INTO Software VALUES (
30, "TortoiseSVN", "5.5",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.zip",
"Client Subversion (SVN)");
INSERT INTO Software VALUES (
31, "Virtual Box", "6.1",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/virtualbox.zip",
"Hyperviseur");
INSERT INTO Software VALUES (
32, "Visual Paradigm", "16.1",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.zip",
"Conception UML");
INSERT INTO Software VALUES (
33, "Visual Studio", "2019",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vs2019.pdf",
null,
"IDE complet");
INSERT INTO Software VALUES (
34, "VMWare player", "15.6",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip",
"Hyperviseur");
INSERT INTO Software VALUES (
35, "Vsphere client", "6.0",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip",
"Client pour hyperviseur");
INSERT INTO Software VALUES (
36, "WinDesign", "16.01",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/win_design.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/windesign.zip",
null);
INSERT INTO Software VALUES (
37, "WinDev mobile", "25",
null,
null,
"IDE pour mobile");
INSERT INTO Software VALUES (
38, "Xamp", "7.4.6",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xamp.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xampp.zip",
null);
INSERT INTO Software VALUES (
39, "R", "4.01",
null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/R.zip",
null);
INSERT INTO Software VALUES (
40, "BaseX", "9.3.3",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_x.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_X.zip",
null);
INSERT INTO Software VALUES (
41, "OpenCV", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.zip",
null);
INSERT INTO Software VALUES (
42, "Flutter", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.zip",
null);
INSERT INTO Software VALUES (
43, "MonoGame", null,
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/monogame.pdf",
"https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MonoGameSetup.zip",
null);

INSERT INTO Sector VALUES (1, "DUT INFO IQ S1");
INSERT INTO Sector VALUES (2, "DUT INFO IQ S2");
INSERT INTO Sector VALUES (3, "DUT INFO IQ S3");
INSERT INTO Sector VALUES (4, "DUT INFO IQ S4");
INSERT INTO Sector VALUES (5, "LMP");


INSERT INTO Course VALUES (1, "M1101", "Systèmes informatique", 1);
INSERT INTO Course VALUES (2, "M1102", "Algorithmique et programmation", 1);
INSERT INTO Course VALUES (3, "M1103", "Structures de données", 1);
INSERT INTO Course VALUES (4, "M1104", "Bases de données", 1);
INSERT INTO Course VALUES (5, "M1105", "Documents numériques", 1);
INSERT INTO Course VALUES (6, "M1106", "Projet tutoré", 1);
INSERT INTO Course VALUES (7, "M1201", "Mathématiques discrètes", 1);
INSERT INTO Course VALUES (8, "M1202", "Algèbre linéaire", 1);
INSERT INTO Course VALUES (9, "M1203", "Economie", 1);
INSERT INTO Course VALUES (10, "M1204", "Fonctionnement des organisations", 1);
INSERT INTO Course VALUES (11, "M1205", "Expression-communication", 1);
INSERT INTO Course VALUES (12, "M1206", "Anglais", 1);
INSERT INTO Course VALUES (13, "M1207", "PPP", 1);

INSERT INTO Course VALUES (14, "M2101", "Programmation bas niveau", 2);
INSERT INTO Course VALUES (15, "M2102", "Réseaux", 2);
INSERT INTO Course VALUES (16, "M2103", "Programmation orientée objets", 2);
INSERT INTO Course VALUES (17, "M2104", "Conception orientée objets", 2);
INSERT INTO Course VALUES (18, "M2105", "Interfaces homme-machine", 2);
INSERT INTO Course VALUES (19, "M2106", "Bases de données", 2);
INSERT INTO Course VALUES (20, "M2107", "Projet tutoré", 2);
INSERT INTO Course VALUES (21, "M2201", "Graphes et langages", 2);
INSERT INTO Course VALUES (22, "M2202", "Analyse", 2);
INSERT INTO Course VALUES (23, "M2203", "Environnement comptable, financier, juridique et social", 2);
INSERT INTO Course VALUES (24, "M2204", "Gestion de projet", 2);
INSERT INTO Course VALUES (25, "M2205", "Expression-Communication", 2);
INSERT INTO Course VALUES (26, "M2206", "Anglais", 2);
INSERT INTO Course VALUES (27, "M2207", "PPP", 2);

INSERT INTO Course VALUES (28, "M3101", "Systèmes d'exploitation", 3);
INSERT INTO Course VALUES (29, "M3102", "Services réseaux", 3);
INSERT INTO Course VALUES (30, "M3103", "Algorithmique avancée", 3);
INSERT INTO Course VALUES (31, "M3104", "Programmation web", 3);
INSERT INTO Course VALUES (32, "M3105", "Conception et programmation objet avancées", 3);
INSERT INTO Course VALUES (33, "M3106", "Bases de données", 3);
INSERT INTO Course VALUES (34, "M3201", "Probabilités et statistique", 3);
INSERT INTO Course VALUES (35, "M3202", "Modélisations mathématiques", 3);
INSERT INTO Course VALUES (36, "M3203", "Droit des TIC", 3);
INSERT INTO Course VALUES (37, "M3204", "Gestion des SI", 3);
INSERT INTO Course VALUES (38, "M3205", "Expression-communication", 3);
INSERT INTO Course VALUES (39, "M3206", "Anglais", 3);
INSERT INTO Course VALUES (40, "M3301", "Production d'applications", 3);
INSERT INTO Course VALUES (41, "M3302", "Projet tutoré", 3);
INSERT INTO Course VALUES (42, "M3303", "PPP", 3);

INSERT INTO Software_Course VALUES(9, 2);  -- Lazarus avec la matière Algorithmique et programmation du S1 DUT Info.
INSERT INTO Software_Course VALUES(9, 3);  -- Lazarus avec la matière Structures de données du S1 DUT Info.
INSERT INTO Software_Course VALUES(16, 4);  -- MySQL Workbench avec la matière Bases de données du S1 DUT Info.
INSERT INTO Software_Course VALUES(16, 19);  -- MySQL Workbench avec la matière Bases de données du S2 DUT Info.
INSERT INTO Software_Course VALUES(16, 33);  -- MySQL Workbench avec la matière Bases de données du S3 DUT Info.
INSERT INTO Software_Course VALUES(17, 16);  -- Netbeans avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO Software_Course VALUES(17, 17);  -- Netbeans avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO Software_Course VALUES(22, 1);  -- Proteus ISIS avec la matière Systèmes informatique du S1 DUT Info.
INSERT INTO Software_Course VALUES(24, 18);  -- Qt avec la matière Interfaces homme-machine du S2 DUT Info.
INSERT INTO Software_Course VALUES(27, 19);  -- SQLDeveloper avec la matière Bases de données du S2 DUT Info.
INSERT INTO Software_Course VALUES(27, 33);  -- SQLDeveloper avec la matière Bases de données du S3 DUT Info.
INSERT INTO Software_Course VALUES(31, 28);  -- Virtual Box avec la matière Systèmes d'exploitation du S3 DUT Info.
INSERT INTO Software_Course VALUES(32, 16);  -- Visual Paradigm avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO Software_Course VALUES(32, 17);  -- Visual Paradigm avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO Software_Course VALUES(32, 32);  -- Visual Paradigm avec la matière Conception et programmation objet avancées du S3 DUT Info.
INSERT INTO Software_Course VALUES(33, 32);  -- Visual studio avec la matière Conception et programmation objet avancées du S3 DUT Info.

INSERT INTO User VALUES (1, "aa546211", "azerty123", "AA", "a.a@gmail.com");
INSERT INTO User VALUES (2, "bb142585", "qsdfgh147", "BB", "b.b@gmail.com");
INSERT INTO User VALUES (3, "cc145798", "poiuyt589", "CC", "c.c@gmail.com");
INSERT INTO User VALUES (4, "dd124578", "nbvcxw145", "DD", "d.d@gmail.com");
INSERT INTO User VALUES (5, "ee415263", "mlkjhg159", "EE", "e.e@gmail.com");
INSERT INTO User VALUES (6, "ff147589", "asdcvb258", "FF", "f.f@gmail.com");
INSERT INTO User VALUES (7, "gg148693", "poikjh357", "GG", "g.g@gmail.com");
INSERT INTO User VALUES (8, "hh459525", "jhguio781", "HH", "h.h@gmail.com");

INSERT INTO Manage VALUES(1, 2);
INSERT INTO Manage VALUES(2, 4);
INSERT INTO Manage VALUES(3, 1);
INSERT INTO Manage VALUES(4, 5);



/*
INSERT INTO Type VALUES (1, "Eleve");
INSERT INTO Type VALUES (2, "Professeur");
INSERT INTO Type VALUES (3, "Administrateur");
*/