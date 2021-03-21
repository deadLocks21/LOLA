DROP PROCEDURE IF EXISTS getCourses;

DELIMITER |

CREATE PROCEDURE getCourses(IN p_sector_id INT)
    BEGIN
		Select * 
        FROM courses
        WHERE sector = p_sector_id;
            
    END|

DELIMITER ;

CALL getCourses(2);