DROP PROCEDURE IF EXISTS updateSector;

DELIMITER |

CREATE PROCEDURE updateSector(IN p_id INT, IN p_code VARCHAR(41), IN p_sector VARCHAR(97), IN p_semester VARCHAR(97))
    BEGIN
    
		update sectors
        set 
        sectors.code = p_code,
        sectors.sector = p_sector,
        sectors.semester = p_semester
        WHERE
        sectors.id = p_id;
        
        
    END|

DELIMITER ;

Call updateSector(6,"Testttttt","DUT INFO","SEMESTRE 5");