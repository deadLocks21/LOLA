DROP PROCEDURE IF EXISTS isAdmin;

DELIMITER |

CREATE PROCEDURE isAdmin(IN p_login VARCHAR(41))
    BEGIN
    
		SELECT "true" as "Reply"
        FROM 
        lola.superadmins JOIN lola.users on superadmins.login = users.id
        WHERE
        users.login = p_login;
        
            
    END|

DELIMITER ;

Call isAdmin("aa546211");