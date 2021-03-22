DROP PROCEDURE IF EXISTS updateCourse;

DELIMITER |

CREATE PROCEDURE updateCourse(IN p_id INT, IN p_code VARCHAR(41), IN p_name VARCHAR(97), IN p_picture VARCHAR(241), IN p_sector_id INT, IN p_admin_login VARCHAR(41), IN p_display BOOL)
    BEGIN
		DECLARE temp INT DEFAULT NULL;
        DECLARE idAdmin INT;
		SELECT "" INTO temp FROM users WHERE users.login = p_admin_login;
		
        IF(temp is NULL) THEN
			INSERT INTO users(login) VALUES (p_admin_login);
            
		END IF;
        
        SELECT users.id INTO idAdmin FROM users WHERE users.login = p_admin_login;
        
        UPDATE Courses
        SET
        code = p_code,
        name = p_name,
		picture = p_picture,
        sector = p_sector_id,
        admin = idAdmin,
        display = p_display
        WHERE
        Courses.id = p_id;
        
    END|

DELIMITER ;

CALL updateCourse(2,"Tesqqqt","TESqqqT","TqqEST",3,"aasssss546211",False);