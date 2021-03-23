DROP PROCEDURE IF EXISTS GetUserById;

DELIMITER |

CREATE PROCEDURE GetUserById(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        users
        WHERE
        users.id = p_id;
    END|

DELIMITER ;

Call GetUserById(2);