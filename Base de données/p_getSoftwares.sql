DROP PROCEDURE IF EXISTS GetSoftwares;

DELIMITER |

CREATE PROCEDURE GetSoftwares(IN p_course_id INT)
    BEGIN
    
		SELECT *
        FROM 
        softwares
        WHERE softwares.course = p_course_id;
        
    END|

DELIMITER ;

Call GetSoftwares(3);