DROP PROCEDURE IF EXISTS getSoftware;

DELIMITER |

CREATE PROCEDURE getSoftware(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        softwares
        WHERE softwares.id = p_id;
        
    END|

DELIMITER ;

Call getSoftware(3);