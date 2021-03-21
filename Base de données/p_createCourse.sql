DROP PROCEDURE IF EXISTS getCourse;

DELIMITER |

CREATE PROCEDURE createCourse(IN p_code VARCHAR(41), IN p_name VARCHAR(97), IN p_picture VARCHAR(241), IN p_sector_id INT, IN p_admin_login VARCHAR(41), IN p_display BOOL)
    BEGIN
		INSERT INTO courses(code,name,picture,sector,admin,display)
        VALUES(p_code,p_name,p_picture,p_sector_id,p_admin_login, p_display);
            
    END|

DELIMITER ;

