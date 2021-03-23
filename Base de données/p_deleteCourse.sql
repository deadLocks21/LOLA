DROP PROCEDURE IF EXISTS DeleteCourse;

DELIMITER |

CREATE PROCEDURE DeleteCourse(IN p_id INT)
    BEGIN
		DELETE FROM Courses
        Where Courses.id = p_id;
    END|

DELIMITER ;

