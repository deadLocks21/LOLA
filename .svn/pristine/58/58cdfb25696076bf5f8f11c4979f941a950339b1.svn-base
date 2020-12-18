DROP PROCEDURE IF EXISTS GetCoursesBySector;

DELIMITER |

CREATE PROCEDURE GetCoursesBySector(IN p_IDSector INT(11))
    BEGIN
		SELECT 
			*
		FROM 
			Courses 
		WHERE
			Courses.sector = p_IDSector;
    END|

DELIMITER ;

CALL GetCoursesBySector(2);