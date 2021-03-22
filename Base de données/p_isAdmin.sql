DROP PROCEDURE IF EXISTS isAdmin;

DELIMITER |

CREATE PROCEDURE isAdmin(IN p_login VARCHAR(41))
   
    BEGIN
		DECLARE temp INT DEFAULT NULL;
		SELECT "" INTO temp
		FROM 
		lola.superadmins JOIN lola.users on superadmins.login = users.id
		WHERE
		users.login = p_login;
        
        
        IF(temp IS NULL) THEN
			SELECT "false" as "Reply";
		ELSE
			SELECT "true" as "Reply";
		END IF;
            
    END|

DELIMITER ;

Call isAdmin("aa546211");