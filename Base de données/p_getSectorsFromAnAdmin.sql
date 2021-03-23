DROP PROCEDURE IF EXISTS GetCoursesFromAnAdmin;

DELIMITER |

CREATE PROCEDURE GetCoursesFromAnAdmin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT *
        FROM 
        Courses JOIN Users on Courses.admin = users.id
        WHERE 
        Users.login = p_login;
        
    END|

DELIMITER ;

Call GetCoursesFromAnAdmin("cc145798");