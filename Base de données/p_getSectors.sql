DROP PROCEDURE IF EXISTS getSectors;

DELIMITER |

CREATE PROCEDURE getSectors()
    BEGIN
    
		SELECT *
        FROM 
        sectors;
        
    END|

DELIMITER ;

Call getSectors();