DROP PROCEDURE IF EXISTS AddSector;

DELIMITER |

CREATE PROCEDURE AddSector(IN p_code VARCHAR(100), IN p_label1 VARCHAR(255), IN p_label2 VARCHAR(255))
    BEGIN

        INSERT INTO Sectors (
            code,
            label1,
			label2)
		VALUES (
            p_code,
            p_label1,
			p_label2
		);
            
    END|

DELIMITER ;

CALL AddSector("LP MN DDIM", "Licence Professionnelle mention Métiers du Numérique", "Conception, rédaction et réalisation web, parcours Design et Développement pour l'Internet Mobile");