DROP PROCEDURE IF EXISTS DeleteSoftware;

DELIMITER |

CREATE PROCEDURE DeleteSoftware(IN p_id INT)
    BEGIN
    
		DELETE FROM softwares
        WHERE id = p_id;
        
    END|

DELIMITER ;

-- Call deleteSoftware(3);