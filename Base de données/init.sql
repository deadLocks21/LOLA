DROP DATABASE IF EXISTS timothe_M3302;
CREATE DATABASE timothe_M3302;

USE timothe_M3302;

SET FOREIGN_KEY_CHECKS = 1;




DROP TABLE IF EXISTS ProfessorsManageCourses;
DROP TABLE IF EXISTS SoftwaresBelongingToCourses;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Softwares;
DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Sectors;
DROP TABLE IF EXISTS UsersTypes;




CREATE TABLE Softwares (
	idSoftware INTEGER AUTO_INCREMENT,
	name VARCHAR(100),
   	version VARCHAR(100),
   	urltuto VARCHAR(100),
	urlsetup VARCHAR(100),
	commentary VARCHAR(255),
	CONSTRAINT PK_Softwares PRIMARY KEY (idSoftware)
);

CREATE TABLE Sectors  (
	idSector INT AUTO_INCREMENT,
	code VARCHAR(100),
	label1 VARCHAR(255),
	label2 VARCHAR(255),
	CONSTRAINT PK_Sectors PRIMARY KEY (idSector)
);

CREATE TABLE Courses (
	idCourse INT AUTO_INCREMENT,
	code VARCHAR(100),
	name VARCHAR(100),
	sector INT,
	CONSTRAINT PK_Courses PRIMARY KEY (idCourse),
	CONSTRAINT FK_Courses_Sectors FOREIGN KEY (sector) REFERENCES Sectors(idSector) ON DELETE CASCADE
);

CREATE TABLE SoftwaresBelongingToCourses (
	software INT,
	course INT,
	CONSTRAINT PK_SoftwaresBelongingToCourses PRIMARY KEY (software, course),
	CONSTRAINT FK_SoftwaresBelongingToCourses_Softwares FOREIGN KEY (software) REFERENCES Softwares(idSoftware) ON DELETE CASCADE,
	CONSTRAINT FK_SoftwaresBelongingToCourses_Courses FOREIGN KEY (course) REFERENCES Courses(idCourse) ON DELETE CASCADE
);

CREATE TABLE UsersTypes (
	idType INT AUTO_INCREMENT,
	name VARCHAR(100),
	CONSTRAINT PK_UsersTypes PRIMARY KEY (idType)
);

CREATE TABLE Users (
	idUser INT AUTO_INCREMENT,
	login VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	name VARCHAR(100),
	email VARCHAR(100),
	userType INT,
	sector INT,
	CONSTRAINT PK_Users PRIMARY KEY (idUser),
	CONSTRAINT FK_Users_Type FOREIGN KEY (userType) REFERENCES UsersTypes(idType) ON DELETE CASCADE,
	CONSTRAINT FK_Users_Sectors FOREIGN KEY (sector) REFERENCES Sectors(idSector) ON DELETE CASCADE
);

CREATE TABLE ProfessorsManageCourses (
	professor INT,
	course INT,
	PRIMARY KEY (professor, course),
	CONSTRAINT FK_ProfessorsManageCourses_Users FOREIGN KEY (professor) REFERENCES Users(idUser) ON DELETE CASCADE,
	CONSTRAINT FK_ProfessorsManageCourses_Courses FOREIGN KEY (course) REFERENCES Courses(idCourse) ON DELETE CASCADE
);



INSERT INTO UsersTypes VALUES (1, "Eleve");
INSERT INTO UsersTypes VALUES (2, "Professeur");
INSERT INTO UsersTypes VALUES (3, "Administrateur");


INSERT INTO Sectors VALUES (1, "DUT INFO IQ S1","DUT Informatique", "Semestre 1");
INSERT INTO Sectors VALUES (2, "DUT INFO IQ S2","DUT Informatique", "Semestre 2");
INSERT INTO Sectors VALUES (3, "DUT INFO IQ S3","DUT Informatique", "Semestre 3");
INSERT INTO Sectors VALUES (4, "DUT INFO IQ S4","DUT Informatique", "Semestre 4");
INSERT INTO Sectors VALUES (5, "LMP","Licence Pro", "Informatique");


INSERT INTO Softwares VALUES (1, "Anaconda", "3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.zip", null);
INSERT INTO Softwares VALUES (2, "Android Studio", "4.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.zip", "IDE complet pour développement Android");
INSERT INTO Softwares VALUES (3, "Apache Cordova", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/cordova.pdf", null, "Outil en ligne de commande. Nécessite Node.JS");
INSERT INTO Softwares VALUES (4, "BaseIUT", "2020", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.zip", "Installateur automatique pour divers logiciels de base (navigateurs, etc.)");
INSERT INTO Softwares VALUES (5, "Freeplane", "1.8.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.zip", "MIND-mapping. Nécessite Java.");
INSERT INTO Softwares VALUES (6, "Git", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.zip", null);
INSERT INTO Softwares VALUES (7, "Hex editor neo", "6.44", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/hex-editor-neo.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/free-hex-editor-neo.zip", "Editeur hexadécimal");
INSERT INTO Softwares VALUES (8, "Java JDK 8", "8", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/java.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/jdk8.zip", null);
INSERT INTO Softwares VALUES (9, "Lazarus", "2.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.zip", "IDE Pascal");
INSERT INTO Softwares VALUES (10, "MCC18", "8.33", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB-C18-Std-Eval-v3_33.zip", "Compilateur C pour PIC; MPLAB prérequis");
INSERT INTO Softwares VALUES (11, "MPLAB IDE", "8.33", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB_IDE_8_33.zip", "IDE pour PIC");
INSERT INTO Softwares VALUES (12, "MS Expression web", "4.0", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Expression4.zip", "Editeur HTML/CSS");
INSERT INTO Softwares VALUES (13, "MS Office", "2019", null, null, "Suite bureautique. ");
INSERT INTO Softwares VALUES (14, "MS Project pro", "2019", null, null, "Gestion de projet");
INSERT INTO Softwares VALUES (15, "MS Visio pro", "2019", null, null, "Dessin vectoriel, diagrammes");
INSERT INTO Softwares VALUES (16, "MySQL Workbench", "8.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.zip", "Client MySQL");
INSERT INTO Softwares VALUES (17, "Netbeans", "8.2", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.zip", "IDE Java. Nécessite un JDK");
INSERT INTO Softwares VALUES (18, "Node.JS", "12.18", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.zip", "Serveur web techno JS");
INSERT INTO Softwares VALUES (19, "Open Cobol IDE", "4.7.3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.zip", "IDE pour Cobol");
INSERT INTO Softwares VALUES (20, "Pencil", "3.1", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.zip", "Outil pour réaliser des maquettes IHM");
INSERT INTO Softwares VALUES (21, "Protégé", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protégé.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protege.zip", "Ontologies");
INSERT INTO Softwares VALUES (22, "Proteus ISIS", null, null, null, "Simulateur électronique");
INSERT INTO Softwares VALUES (23, "Pyzo", "4.1", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pyzo.zip", null);
INSERT INTO Softwares VALUES (24, "QT", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.zip", "IDE + framework complet C++, pour bureau et mobile");
INSERT INTO Softwares VALUES (25, "Scilab", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.zip", "Outil de calcul math/physique");
INSERT INTO Softwares VALUES (26, "Simulateur réseau", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/simulateur.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Simulateur.zip", null);
INSERT INTO Softwares VALUES (27, "SQLDeveloper", "19.2", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/SQLDeveloper.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sqldeveloper.zip", "Client Oracle. Nécessite Java.");
INSERT INTO Softwares VALUES (28, "SublimeText", "3", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sublime_text.zip", null);
INSERT INTO Softwares VALUES (29, "TableauDesktop", "2020", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tableau-public.zip", "Visualisation de données");
INSERT INTO Softwares VALUES (30, "TortoiseSVN", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.zip", "Client Subversion (SVN)");
INSERT INTO Softwares VALUES (31, "Virtual Box", "6.1", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/virtualbox.zip", "Hyperviseur");
INSERT INTO Softwares VALUES (32, "Visual Paradigm", "16.1", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.zip", "Conception UML");
INSERT INTO Softwares VALUES (33, "Visual Studio", "2019", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vs2019.pdf", null, "IDE complet");
INSERT INTO Softwares VALUES (34, "VMWare player", "15.6", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip", "Hyperviseur");
INSERT INTO Softwares VALUES (35, "Vsphere client", "6.0", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip", "Client pour hyperviseur");
INSERT INTO Softwares VALUES (36, "WinDesign", "16.01", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/win_design.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/windesign.zip", null);
INSERT INTO Softwares VALUES (37, "WinDev mobile", "25", null, null, "IDE pour mobile");
INSERT INTO Softwares VALUES (38, "Xamp", "7.4.6", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xamp.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xampp.zip", null);
INSERT INTO Softwares VALUES (39, "R", "4.01", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/R.zip", null);
INSERT INTO Softwares VALUES (40, "BaseX", "9.3.3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_x.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_X.zip", null);
INSERT INTO Softwares VALUES (41, "OpenCV", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.zip", null);
INSERT INTO Softwares VALUES (42, "Flutter", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.zip", null);
INSERT INTO Softwares VALUES (43, "MonoGame", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/monogame.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MonoGameSetup.zip", null);


INSERT INTO Courses VALUES (1, "M1101", "Systèmes informatique", 1);
INSERT INTO Courses VALUES (2, "M1102", "Algorithmique et programmation", 1);
INSERT INTO Courses VALUES (3, "M1103", "Structures de données", 1);
INSERT INTO Courses VALUES (4, "M1104", "Bases de données", 1);
INSERT INTO Courses VALUES (5, "M1105", "Documents numériques", 1);
INSERT INTO Courses VALUES (6, "M1106", "Projet tutoré", 1);
INSERT INTO Courses VALUES (7, "M1201", "Mathématiques discrètes", 1);
INSERT INTO Courses VALUES (8, "M1202", "Algèbre linéaire", 1);
INSERT INTO Courses VALUES (9, "M1203", "Economie", 1);
INSERT INTO Courses VALUES (10, "M1204", "Fonctionnement des organisations", 1);
INSERT INTO Courses VALUES (11, "M1205", "Expression-communication", 1);
INSERT INTO Courses VALUES (12, "M1206", "Anglais", 1);
INSERT INTO Courses VALUES (13, "M1207", "PPP", 1);

INSERT INTO Courses VALUES (14, "M2101", "Programmation bas niveau", 2);
INSERT INTO Courses VALUES (15, "M2102", "Réseaux", 2);
INSERT INTO Courses VALUES (16, "M2103", "Programmation orientée objets", 2);
INSERT INTO Courses VALUES (17, "M2104", "Conception orientée objets", 2);
INSERT INTO Courses VALUES (18, "M2105", "Interfaces homme-machine", 2);
INSERT INTO Courses VALUES (19, "M2106", "Bases de données", 2);
INSERT INTO Courses VALUES (20, "M2107", "Projet tutoré", 2);
INSERT INTO Courses VALUES (21, "M2201", "Graphes et langages", 2);
INSERT INTO Courses VALUES (22, "M2202", "Analyse", 2);
INSERT INTO Courses VALUES (23, "M2203", "Environnement comptable, financier, juridique et social", 2);
INSERT INTO Courses VALUES (24, "M2204", "Gestion de projet", 2);
INSERT INTO Courses VALUES (25, "M2205", "Expression-Communication", 2);
INSERT INTO Courses VALUES (26, "M2206", "Anglais", 2);
INSERT INTO Courses VALUES (27, "M2207", "PPP", 2);

INSERT INTO Courses VALUES (28, "M3101", "Systèmes d'exploitation", 3);
INSERT INTO Courses VALUES (29, "M3102", "Services réseaux", 3);
INSERT INTO Courses VALUES (30, "M3103", "Algorithmique avancée", 3);
INSERT INTO Courses VALUES (31, "M3104", "Programmation web", 3);
INSERT INTO Courses VALUES (32, "M3105", "Conception et programmation objet avancées", 3);
INSERT INTO Courses VALUES (33, "M3106", "Bases de données", 3);
INSERT INTO Courses VALUES (34, "M3201", "Probabilités et statistique", 3);
INSERT INTO Courses VALUES (35, "M3202", "Modélisations mathématiques", 3);
INSERT INTO Courses VALUES (36, "M3203", "Droit des TIC", 3);
INSERT INTO Courses VALUES (37, "M3204", "Gestion des SI", 3);
INSERT INTO Courses VALUES (38, "M3205", "Expression-communication", 3);
INSERT INTO Courses VALUES (39, "M3206", "Anglais", 3);
INSERT INTO Courses VALUES (40, "M3301", "Production d'applications", 3);
INSERT INTO Courses VALUES (41, "M3302", "Projet tutoré", 3);
INSERT INTO Courses VALUES (42, "M3303", "PPP", 3);


INSERT INTO Users VALUES (1, "aa546211", "azerty123", "AA", "a.a@gmail.com", 2, NULL);
INSERT INTO Users VALUES (2, "bb142585", "qsdfgh147", "BB", "b.b@gmail.com", 2, NULL);
INSERT INTO Users VALUES (3, "cc145798", "poiuyt589", "CC", "c.c@gmail.com", 1, 1);
INSERT INTO Users VALUES (4, "dd124578", "nbvcxw145", "DD", "d.d@gmail.com", 1, 2);
INSERT INTO Users VALUES (5, "ee415263", "mlkjhg159", "EE", "e.e@gmail.com", 1, 3);
INSERT INTO Users VALUES (6, "ff147589", "asdcvb258", "FF", "f.f@gmail.com", 1, 4);
INSERT INTO Users VALUES (7, "gg148693", "poikjh357", "GG", "g.g@gmail.com", 1, 5);
INSERT INTO Users VALUES (8, "hh459525", "jhguio781", "HH", "h.h@gmail.com", 3, NULL);


INSERT INTO SoftwaresBelongingToCourses VALUES(8, 16);	 -- Java JDK 8 avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(8, 17);	 -- Java JDK 8 avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(9, 2);  -- Lazarus avec la matière Algorithmique et programmation du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(9, 3);  -- Lazarus avec la matière Structures de données du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(13, 5);	 -- MS Office avec la matière Documents numériques du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(16, 4);  -- MySQL Workbench avec la matière Bases de données du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(16, 19);  -- MySQL Workbench avec la matière Bases de données du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(16, 33);  -- MySQL Workbench avec la matière Bases de données du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(17, 16);  -- Netbeans avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(17, 17);  -- Netbeans avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(20, 18);	 -- Pencil avec la matière Interfaces homme-machine du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(22, 1);  -- Proteus ISIS avec la matière Systèmes informatique du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(24, 18);  -- Qt avec la matière Interfaces homme-machine du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(27, 19);  -- SQLDeveloper avec la matière Bases de données du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(27, 33);  -- SQLDeveloper avec la matière Bases de données du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(28, 5);	-- SublimeText avec la matière Documents numériques du S1 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(28, 31);	 -- SublimeText avec la matière Programmation web du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(30, 16);	 -- TortoiseSVN avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(30, 17);	 -- TortoiseSVN avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(30, 32);	 -- TortoiseSVN avec la matière Conception et programmation objet avancées du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(31, 28);  -- Virtual Box avec la matière Systèmes d'exploitation du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(32, 16);  -- Visual Paradigm avec la matière Programmation orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(32, 17);  -- Visual Paradigm avec la matière Conception orientée objets du S2 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(32, 32);  -- Visual Paradigm avec la matière Conception et programmation objet avancées du S3 DUT Info.
INSERT INTO SoftwaresBelongingToCourses VALUES(33, 32);  -- Visual studio avec la matière Conception et programmation objet avancées du S3 DUT Info.


INSERT INTO ProfessorsManageCourses VALUES(1, 2);
INSERT INTO ProfessorsManageCourses VALUES(2, 4);
INSERT INTO ProfessorsManageCourses VALUES(1, 1);
INSERT INTO ProfessorsManageCourses VALUES(2, 5);


DROP PROCEDURE IF EXISTS AlterSoftware;
DROP PROCEDURE IF EXISTS UserAndPass;
DROP PROCEDURE IF EXISTS GetUserSoftwares;
DROP PROCEDURE IF EXISTS GetUser;
DROP PROCEDURE IF EXISTS GetSoftware;
DROP PROCEDURE IF EXISTS GetProfessorSoftwares;
DROP PROCEDURE IF EXISTS AddSector;
DROP PROCEDURE IF EXISTS AlterSector;
DROP PROCEDURE IF EXISTS DeleteSector;
DROP PROCEDURE IF EXISTS GetAllSectorsAdmin;
DROP PROCEDURE IF EXISTS GetSector;
DROP PROCEDURE IF EXISTS GetAllSoftwares;

DELIMITER |

CREATE PROCEDURE AlterSoftware(IN p_ID INT(11), IN p_Name VARCHAR(100),IN p_Version VARCHAR(100), IN p_UrlSetup VARCHAR(100),IN p_UrlTuto VARCHAR(100), IN p_Comment VARCHAR(100))
    BEGIN

        UPDATE Softwares
        SET 
            name=p_Name,
            version = p_Version,
            urltuto = p_UrlTuto,
            urlsetup = p_UrlSetup,
            commentary = p_Comment

        WHERE idSoftware=p_ID;

    END|

CREATE PROCEDURE UserAndPass(IN p_login VARCHAR(100), IN p_pass VARCHAR(100))
    BEGIN
		DECLARE l_pass VARCHAR(100);
    
        DROP TABLE IF EXISTS res;
        CREATE TABLE res(r INT);
		
        SELECT password INTO l_pass FROM Users WHERE login=p_login;
        INSERT INTO res VALUES (IF(p_pass=l_pass, 1, 0));
		
		SELECT * FROM res;
		
		DROP TABLE res;
    END|
	
CREATE PROCEDURE GetUserSoftwares(IN p_login VARCHAR(100))
    BEGIN
    
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses As C ON SBTC.course = C.idCourse
			JOIN Sectors As S ON C.sector = S.idSector
			JOIN Users As U ON S.idSector = U.sector
		WHERE 
			U.login = p_login
		ORDER BY
			C.code ASC,
			Soft.name ASC;
			

    END|

CREATE PROCEDURE GetUser(IN p_login VARCHAR(100))
    BEGIN
	
		SELECT * FROM Users WHERE login=p_login;
		
    END|
	
CREATE PROCEDURE GetSoftware(IN p_ID INT(11))

    BEGIN
    
        SELECT * FROM Softwares WHERE idSoftware = p_ID;

    END|
	
CREATE PROCEDURE GetProfessorSoftwares(IN p_login VARCHAR(100))

    BEGIN
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses AS C ON SBTC.course = C.idCourse
			JOIN ProfessorsManageCourses AS M ON C.idCourse = M.course
			JOIN Users AS U ON M.professor = U.idUser
		WHERE
			U.login = p_login
		ORDER BY
			C.code ASC,
			Soft.name ASC;
    END|
	
CREATE PROCEDURE GetAllSoftwares()
    BEGIN
    
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses As C ON SBTC.course = C.idCourse
			JOIN Sectors As S ON C.sector = S.idSector
			JOIN Users As U ON S.idSector = U.sector
		ORDER BY
			C.code ASC,
			Soft.name ASC;

    END|

CREATE PROCEDURE AddSector(IN p_Code VARCHAR(100), IN p_Label1 VARCHAR(255), IN p_Label2 VARCHAR(255))
    BEGIN

        INSERT INTO Sectors (
            code,
            label1,
			label2)
		VALUES (
            p_Code,
            p_Label1,
			p_Label2
		);
            
    END|

CREATE PROCEDURE AlterSector(IN p_id VARCHAR(100), IN p_code VARCHAR(100), IN p_label1 VARCHAR(255), IN p_label2 VARCHAR(255))

    BEGIN
        UPDATE Sectors
        SET 
            code = p_code,
            label1 = p_label1,
			label2 = p_label2
        WHERE
            idSector = p_id;
    END|

CREATE PROCEDURE DeleteSector(IN p_id INT(11))
    BEGIN
    
		DELETE FROM Sectors
		WHERE idSector = p_id;

    END|

CREATE PROCEDURE GetAllSectorsAdmin()
    BEGIN
    
		SELECT 
			*
		FROM 
			Sectors
		ORDER BY 
			idSector ASC;
    END|
	
CREATE PROCEDURE GetSector(IN p_id INT(11))
    BEGIN
		SELECT * FROM Sectors WHERE idSector=p_id;
    END|

DELIMITER ;

DROP USER IF EXISTS 'timothe_M3302'@'localhost';
CREATE USER 'timothe_M3302'@'localhost' IDENTIFIED BY '+w^wfU5E~D99';
GRANT EXECUTE ON timothe_M3302.* TO 'timothe_M3302'@'localhost';
FLUSH PRIVILEGES;