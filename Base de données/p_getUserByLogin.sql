DROP PROCEDURE IF EXISTS getUserByLogin;

DELIMITER |

CREATE PROCEDURE getUserByLogin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT *
        FROM 
        users
        WHERE
        users.login = p_login;
        
            
    END|

DELIMITER ;

Call getUserByLogin("aa546211");