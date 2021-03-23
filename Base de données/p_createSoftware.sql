DROP PROCEDURE IF EXISTS CreateSoftware;

DELIMITER |

CREATE PROCEDURE CreateSoftware(IN p_name VARCHAR(97), IN p_version VARCHAR(17),IN p_tuto VARCHAR(241), IN p_setup VARCHAR(241), IN p_commentary VARCHAR(241), IN p_picture VARCHAR(241),  IN p_course INT, IN p_display BOOL)
    BEGIN
    
		INSERT INTO softwares(name,version,tuto,setup,commentary,picture, Softwarescol, course, display)
        VALUES(p_name,p_version,p_tuto,p_setup,p_commentary,p_picture, p_Softwarescol, p_course, p_display);
        
    END|

DELIMITER ;



