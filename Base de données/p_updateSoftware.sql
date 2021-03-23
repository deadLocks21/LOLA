DROP PROCEDURE IF EXISTS UpdateSoftware;

DELIMITER |

CREATE PROCEDURE UpdateSoftware(IN p_idINT, IN p_name VARCHAR(97), IN p_version VARCHAR(17),IN p_tuto VARCHAR(241), IN p_setup VARCHAR(241), IN p_commentary VARCHAR(241), IN p_picture VARCHAR(241),  IN p_course INT, IN p_display BOOL)
    BEGIN
		UPDATE Software
        SET
        name = p_name,
        version = p_version,
        tuto = p_tuto,
        setup = p_setup,
        commentary = p_commentary,
        picture = p_picture,
        course = p_course,
        display = p_display
        WHERE 
        id = p_id;
    END|

DELIMITER ;



