USE lola;

SET FOREIGN_KEY_CHECKS = 1;


/*  _____                     _           _       _            
   |_   _|                   | |         | |     | |           
     | |  _ __  ___  ___ _ __| |_      __| | __ _| |_ __ _ ___ 
     | | | '_ \/ __|/ _ \ '__| __|    / _` |/ _` | __/ _` / __|
    _| |_| | | \__ \  __/ |  | |_    | (_| | (_| | || (_| \__ \
   |_____|_| |_|___/\___|_|   \__|    \__,_|\__,_|\__\__,_|___/
*/



INSERT INTO Sectors VALUES (1, "DUT INFO IQ S1","DUT Informatique", "Semestre 1");
INSERT INTO Sectors VALUES (2, "DUT INFO IQ S2","DUT Informatique", "Semestre 2");
INSERT INTO Sectors VALUES (3, "DUT INFO IQ S3","DUT Informatique", "Semestre 3");
INSERT INTO Sectors VALUES (4, "DUT INFO IQ S4","DUT Informatique", "Semestre 4");
INSERT INTO Sectors VALUES (5, "LMP","Licence Pro", "Informatique");

INSERT INTO Users VALUES (1, "aa546211");
INSERT INTO Users VALUES (2, "bb142585");
INSERT INTO Users VALUES (3, "cc145798");
INSERT INTO Users VALUES (4, "dd124578");
INSERT INTO Users VALUES (5, "ee415263");
INSERT INTO Users VALUES (6, "ff147589");
INSERT INTO Users VALUES (7, "gg148693");
INSERT INTO Users VALUES (8, "hh459525");

INSERT INTO Courses VALUES (1, "M1101", "Systèmes informatique",null, 1,1,null);
INSERT INTO Courses VALUES (2, "M1102", "Algorithmique et programmation",null, 1,1,null);
INSERT INTO Courses VALUES (3, "M1103", "Structures de données",null, 1,1,null);
INSERT INTO Courses VALUES (4, "M1104", "Bases de données",null, 1,1,null);
INSERT INTO Courses VALUES (5, "M1105", "Documents numériques",null, 1,1,null);
INSERT INTO Courses VALUES (6, "M1106", "Projet tutoré",null, 1,1,null);
INSERT INTO Courses VALUES (7, "M1201", "Mathématiques discrètes",null, 1,1,null);
INSERT INTO Courses VALUES (8, "M1202", "Algèbre linéaire",null, 1,1,null);
INSERT INTO Courses VALUES (9, "M1203", "Economie",null, 1,1,null);
INSERT INTO Courses VALUES (10, "M1204", "Fonctionnement des organisations",null, 1,1,null);
INSERT INTO Courses VALUES (11, "M1205", "Expression-communication",null, 1,1,null);
INSERT INTO Courses VALUES (12, "M1206", "Anglais",null, 1,1,null);
INSERT INTO Courses VALUES (13, "M1207", "PPP",null, 1,1,null);

INSERT INTO Courses VALUES (14, "M2101", "Programmation bas niveau",null, 2,1,null);
INSERT INTO Courses VALUES (15, "M2102", "Réseaux", null, 2,1,null);
INSERT INTO Courses VALUES (16, "M2103", "Programmation orientée objets", null, 2,1,null);
INSERT INTO Courses VALUES (17, "M2104", "Conception orientée objets", null, 2,1,null);
INSERT INTO Courses VALUES (18, "M2105", "Interfaces homme-machine", null, 2,1,null);
INSERT INTO Courses VALUES (19, "M2106", "Bases de données", null, 2,1,null);
INSERT INTO Courses VALUES (20, "M2107", "Projet tutoré", null, 2,1,null);
INSERT INTO Courses VALUES (21, "M2201", "Graphes et langages", null, 2,1,null);
INSERT INTO Courses VALUES (22, "M2202", "Analyse", null, 2,1,null);
INSERT INTO Courses VALUES (23, "M2203", "Environnement comptable, financier, juridique et social", null, 2,1,null);
INSERT INTO Courses VALUES (24, "M2204", "Gestion de projet", null, 2,1,null);
INSERT INTO Courses VALUES (25, "M2205", "Expression-Communication", null, 2,1,null);
INSERT INTO Courses VALUES (26, "M2206", "Anglais", null, 2,1,null);
INSERT INTO Courses VALUES (27, "M2207", "PPP", null, 2,1,null);

INSERT INTO Courses VALUES (28, "M3101", "Systèmes d'exploitation", null, 3,1,null);
INSERT INTO Courses VALUES (29, "M3102", "Services réseaux", null, 3,1,null);
INSERT INTO Courses VALUES (30, "M3103", "Algorithmique avancée", null, 3,1,null);
INSERT INTO Courses VALUES (31, "M3104", "Programmation web", null, 3,1,null);
INSERT INTO Courses VALUES (32, "M3105", "Conception et programmation objet avancées", null, 3,1,null);
INSERT INTO Courses VALUES (33, "M3106", "Bases de données", null, 3,1,null);
INSERT INTO Courses VALUES (34, "M3201", "Probabilités et statistique", null, 3,1,null);
INSERT INTO Courses VALUES (35, "M3202", "Modélisations mathématiques", null, 3,1,null);
INSERT INTO Courses VALUES (36, "M3203", "Droit des TIC", null, 3,1,null);
INSERT INTO Courses VALUES (37, "M3204", "Gestion des SI", null, 3,1,null);
INSERT INTO Courses VALUES (38, "M3205", "Expression-communication", null, 3,1,null);
INSERT INTO Courses VALUES (39, "M3206", "Anglais", null, 3,1,null);
INSERT INTO Courses VALUES (40, "M3301", "Production d'applications", null, 3,1,null);
INSERT INTO Courses VALUES (41, "M3302", "Projet tutoré", null, 3,1,null);
INSERT INTO Courses VALUES (42, "M3303", "PPP", null, 3,1,null);


INSERT INTO Softwares VALUES (1, "Anaconda", "3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/anaconda.zip", null,null,null,1,null);
INSERT INTO Softwares VALUES (2, "Android Studio", "4.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/android.zip", "IDE complet pour développement Android",null, null,1,null);
INSERT INTO Softwares VALUES (3, "Apache Cordova", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/cordova.pdf", null, "Outil en ligne de commande. Nécessite Node.JS",null, null,1,null);
INSERT INTO Softwares VALUES (4, "BaseIUT", "2020", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base.zip", "Installateur automatique pour divers logiciels de base (navigateurs, etc.)", null, null,1,null);
INSERT INTO Softwares VALUES (5, "Freeplane", "1.8.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/freeplane.zip", "MIND-mapping. Nécessite Java.",null, null,2,null);
INSERT INTO Softwares VALUES (6, "Git", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/git.zip", null, null, null,3,null);
INSERT INTO Softwares VALUES (7, "Hex editor neo", "6.44", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/hex-editor-neo.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/free-hex-editor-neo.zip", "Editeur hexadécimal",null, null,3,null);
INSERT INTO Softwares VALUES (8, "Java JDK 8", "8", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/java.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/jdk8.zip", null, null, null,3,null);
INSERT INTO Softwares VALUES (9, "Lazarus", "2.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/lazarus.zip", "IDE Pascal",null, null,2,null);
INSERT INTO Softwares VALUES (10, "MCC18", "8.33", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB-C18-Std-Eval-v3_33.zip", "Compilateur C pour PIC; MPLAB prérequis", null, null,1,null);
INSERT INTO Softwares VALUES (11, "MPLAB IDE", "8.33", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MPLAB_IDE_8_33.zip", "IDE pour PIC",null, null,4,null);
INSERT INTO Softwares VALUES (12, "MS Expression web", "4.0", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Expression4.zip", "Editeur HTML/CSS",null, null,2,null);
INSERT INTO Softwares VALUES (13, "MS Office", "2019", null, null, "Suite bureautique. ", null,null,3,null);
INSERT INTO Softwares VALUES (14, "MS Project pro", "2019", null, null, "Gestion de projet", null,null,2,null);
INSERT INTO Softwares VALUES (15, "MS Visio pro", "2019", null, null, "Dessin vectoriel, diagrammes", null,null,4,null);
INSERT INTO Softwares VALUES (16, "MySQL Workbench", "8.0", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/mysql.zip", "Client MySQL",null, null,1,null);
INSERT INTO Softwares VALUES (17, "Netbeans", "8.2", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/netbeans.zip", "IDE Java. Nécessite un JDK",null, null,1,null);
INSERT INTO Softwares VALUES (18, "Node.JS", "12.18", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/nodejs.zip", "Serveur web techno JS",null, null,1,null);
INSERT INTO Softwares VALUES (19, "Open Cobol IDE", "4.7.3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencobol.zip", "IDE pour Cobol",null, null,1,null);
INSERT INTO Softwares VALUES (20, "Pencil", "3.1", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pencil.zip", "Outil pour réaliser des maquettes IHM",null, null,1,null);
INSERT INTO Softwares VALUES (21, "Protégé", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protégé.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/protege.zip", "Ontologies",null, null,1,null);
INSERT INTO Softwares VALUES (22, "Proteus ISIS", null, null, null, "Simulateur électronique",null, null,3,null);
INSERT INTO Softwares VALUES (23, "Pyzo", "4.1", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/pyzo.zip", null, null, null,4,null);
INSERT INTO Softwares VALUES (24, "QT", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/qt.zip", "IDE + framework complet C++, pour bureau et mobile",null, null,1,null);
INSERT INTO Softwares VALUES (25, "Scilab", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Scilab.zip", "Outil de calcul math/physique",null, null,1,null);
INSERT INTO Softwares VALUES (26, "Simulateur réseau", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/simulateur.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/Simulateur.zip", null,null, null,1,null);
INSERT INTO Softwares VALUES (27, "SQLDeveloper", "19.2", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/SQLDeveloper.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sqldeveloper.zip", "Client Oracle. Nécessite Java.",null, null,1,null);
INSERT INTO Softwares VALUES (28, "SublimeText", "3", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/sublime_text.zip", null,null, null,2,null);
INSERT INTO Softwares VALUES (29, "TableauDesktop", "2020", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tableau-public.zip", "Visualisation de données",null, null,3,null);
INSERT INTO Softwares VALUES (30, "TortoiseSVN", "5.5", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/tortoise.zip", "Client Subversion (SVN)",null, null,1,null);
INSERT INTO Softwares VALUES (31, "Virtual Box", "6.1", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/virtualbox.zip", "Hyperviseur",null, null,3,null);
INSERT INTO Softwares VALUES (32, "Visual Paradigm", "16.1", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vp.zip", "Conception UML",null, null,1,null);
INSERT INTO Softwares VALUES (33, "Visual Studio", "2019", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/vs2019.pdf", null, "IDE complet",null, null,4,null);
INSERT INTO Softwares VALUES (34, "VMWare player", "15.6", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip", "Hyperviseur",null, null,4,null);
INSERT INTO Softwares VALUES (35, "Vsphere client", "6.0", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/VMWare.zip", "Client pour hyperviseur",null, null,2,null);
INSERT INTO Softwares VALUES (36, "WinDesign", "16.01", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/win_design.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/windesign.zip", null,null, null,1,null);
INSERT INTO Softwares VALUES (37, "WinDev mobile", "25", null, null, "IDE pour mobile",null, null,1,null);
INSERT INTO Softwares VALUES (38, "Xamp", "7.4.6", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xamp.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/xampp.zip", null,null, null,2,null);
INSERT INTO Softwares VALUES (39, "R", "4.01", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/R.zip", null,null, null,3,null);
INSERT INTO Softwares VALUES (40, "BaseX", "9.3.3", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_x.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/base_X.zip", null,null, null,1,null);
INSERT INTO Softwares VALUES (41, "OpenCV", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/opencv.zip", null,null, null,1,null);
INSERT INTO Softwares VALUES (42, "Flutter", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/flutter.zip", null,null, null,1,null);
INSERT INTO Softwares VALUES (43, "MonoGame", null, "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/monogame.pdf", "https://iutdijon.u-bourgogne.fr/intra/iq/softs/files/MonoGameSetup.zip", null,null, null,1,null);

