DROP PROCEDURE IF EXISTS getSoftwares;

DELIMITER |

CREATE PROCEDURE getSoftwares(IN p_course_id INT)
    BEGIN
    
		SELECT *
        FROM 
        softwares
        WHERE softwares.course = p_course_id;
        
    END|

DELIMITER ;

Call getSoftwares(3);