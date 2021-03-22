DROP PROCEDURE IF EXISTS createCourse;

DELIMITER |

CREATE PROCEDURE createCourse(IN p_code VARCHAR(41), IN p_name VARCHAR(97), IN p_picture VARCHAR(241), IN p_sector_id INT, IN p_admin_login VARCHAR(41), IN p_display BOOL)
    BEGIN
		DECLARE temp INT DEFAULT NULL;
        DECLARE idAdmin INT;
		SELECT "" INTO temp FROM users WHERE users.login = p_admin_login;
		
        IF(temp is NULL) THEN
			INSERT INTO users(login) VALUES (p_admin_login);
            
		END IF;
        
        SELECT users.id INTO idAdmin FROM users WHERE users.login = p_admin_login;
        
		INSERT INTO Courses(code,name,picture,sector,admin,display) VALUES(p_code, p_name, p_picture, p_sector_id, idAdmin, p_display);
        
    END|

DELIMITER ;

CALL createCourse("Tesqssqqt","TESqsssqqT","TqssssqEST",3,"aa546211",False);