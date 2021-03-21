DROP PROCEDURE IF EXISTS getCourse;

DELIMITER |

CREATE PROCEDURE getCourse(IN p_id INT)
    BEGIN
		Select * 
        FROM courses
        WHERE id = p_id;
            
    END|

DELIMITER ;

CALL getCourse(10);