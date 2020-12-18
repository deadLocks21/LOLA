DROP PROCEDURE IF EXISTS GetSoftware;

DELIMITER |

CREATE PROCEDURE GetSoftware(IN p_ID INT(11))

    BEGIN
    
        SELECT * FROM Softwares WHERE idSoftware = p_ID;

    END|

DELIMITER ;
