DROP PROCEDURE IF EXISTS GetSectors;

DELIMITER |

CREATE PROCEDURE GetSectors()
    BEGIN
    
		SELECT *
        FROM 
        sectors;
        
    END|

DELIMITER ;

Call GetSectors();