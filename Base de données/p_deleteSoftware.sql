DROP PROCEDURE IF EXISTS deleteSoftware;

DELIMITER |

CREATE PROCEDURE deleteSoftware(IN p_id INT)
    BEGIN
    
		DELETE FROM softwares
        WHERE id = p_id;
        
    END|

DELIMITER ;

-- Call deleteSoftware(3);