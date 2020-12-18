DROP PROCEDURE IF EXISTS AlterSector;

DELIMITER |

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

DELIMITER ;

CALL AlterSector(6, "LP MN DDIM", "Licence Professionnelle mention Métiers du Numérique (MN)", "conception, rédaction et réalisation web, parcours Design et Développement pour l'Internet Mobile (DDIM)");