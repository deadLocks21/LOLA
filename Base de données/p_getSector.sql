DROP PROCEDURE IF EXISTS GetSector;

DELIMITER |

CREATE PROCEDURE GetSector(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        sectors
        WHERE
        sectors.id = p_id;
        
    END|

DELIMITER ;

Call GetSector(3);