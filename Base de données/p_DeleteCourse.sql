DROP PROCEDURE IF EXISTS DeleteCourse;

DELIMITER |

CREATE PROCEDURE DeleteCourse(IN p_id INT(11))
    BEGIN
    
		DELETE FROM Courses
		WHERE idCourse = p_id;

    END|
	
DELIMITER ;

CALL DeleteCourse(45);
CALL DeleteCourse(44);
CALL DeleteCourse(43);