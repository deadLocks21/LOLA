DROP PROCEDURE IF EXISTS getSector;

DELIMITER |

CREATE PROCEDURE getSector(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        sectors
        WHERE
        sectors.id = p_id;
        
    END|

DELIMITER ;

Call getSector(3);