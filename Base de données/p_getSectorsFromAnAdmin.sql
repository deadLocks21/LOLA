DROP PROCEDURE IF EXISTS getCoursesFromAnAdmin;

DELIMITER |

CREATE PROCEDURE getCoursesFromAnAdmin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT *
        FROM 
        Courses JOIN Users on Courses.admin = users.id
        WHERE 
        Users.login = p_login;
        
    END|

DELIMITER ;

Call getCoursesFromAnAdmin("cc145798");