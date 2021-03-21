DROP PROCEDURE IF EXISTS createSector;

DELIMITER |

CREATE PROCEDURE createSector(IN p_code VARCHAR(41), IN p_sector VARCHAR(97), IN p_semester VARCHAR(97))
    BEGIN
    
		INSERT INTO sectors(code,sector,semester)
        VALUES(p_code, p_sector, p_semester);
        
    END|

DELIMITER ;

Call createSector("Test","DUT INFO","SEMESTRE 5");