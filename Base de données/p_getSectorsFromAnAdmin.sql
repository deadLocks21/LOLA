DROP PROCEDURE IF EXISTS getSectorsFromAnAdmin;

DELIMITER |

CREATE PROCEDURE getSectorsFromAnAdmin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT *
        FROM 
        sectors JOIN users on sectors.
        
    END|

DELIMITER ;

Call getSectorsFromAnAdmin(1);