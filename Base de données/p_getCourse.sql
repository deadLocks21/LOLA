DROP PROCEDURE IF EXISTS GetCourse;

DELIMITER |

CREATE PROCEDURE GetCourse(IN p_id INT)
    BEGIN
		Select * 
        FROM courses
        WHERE id = p_id;
            
    END|

DELIMITER ;

CALL GetCourse(10);