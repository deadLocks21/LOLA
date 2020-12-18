DROP PROCEDURE IF EXISTS DeleteSector;

DELIMITER |

CREATE PROCEDURE DeleteSector(IN p_id INT(11))
    BEGIN
    
		DELETE FROM Sectors
		WHERE idSector = p_id;

    END|
	
DELIMITER ;

CALL DeleteSector(6);
