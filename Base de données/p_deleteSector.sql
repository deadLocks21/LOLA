DROP PROCEDURE IF EXISTS deleteSector;

DELIMITER |

CREATE PROCEDURE deleteSector(IN p_id INT)
    BEGIN
    
		DELETE FROM sectors
        WHERE sectors.id = p_id;
        
        
    END|

DELIMITER ;

Call deleteSector(6);