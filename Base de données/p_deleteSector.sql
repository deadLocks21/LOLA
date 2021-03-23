DROP PROCEDURE IF EXISTS DeleteSector;

DELIMITER |

CREATE PROCEDURE DeleteSector(IN p_id INT)
    BEGIN
    
		DELETE FROM sectors
        WHERE sectors.id = p_id;
        
        
    END|

DELIMITER ;

Call deleteSector(6);