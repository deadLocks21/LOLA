DROP PROCEDURE IF EXISTS GetCourses;

DELIMITER |

CREATE PROCEDURE GetCourses(IN p_sector_id INT)
    BEGIN
		Select * 
        FROM courses
        WHERE sector = p_sector_id;
            
    END|

DELIMITER ;

CALL GetCourses(2);