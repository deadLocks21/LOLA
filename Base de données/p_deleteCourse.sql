DROP PROCEDURE IF EXISTS deleteCourse;

DELIMITER |

CREATE PROCEDURE deleteCourse(IN p_id INT)
    BEGIN
		DELETE FROM Courses
        Where Courses.id = p_id;
    END|

DELIMITER ;

