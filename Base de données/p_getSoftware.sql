DROP PROCEDURE IF EXISTS GetSoftware;

DELIMITER |

CREATE PROCEDURE GetSoftware(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        softwares
        WHERE softwares.id = p_id;
        
    END|

DELIMITER ;

Call GetSoftware(3);