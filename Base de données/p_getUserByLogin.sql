DROP PROCEDURE IF EXISTS GetUserByLogin;

DELIMITER |

CREATE PROCEDURE GetUserByLogin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT *
        FROM 
        users
        WHERE
        users.login = p_login;
        
            
    END|

DELIMITER ;

Call GetUserByLogin("aa546211");