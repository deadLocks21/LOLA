DROP PROCEDURE IF EXISTS getUserById;

DELIMITER |

CREATE PROCEDURE getUserById(IN p_id INT)
    BEGIN
    
		SELECT *
        FROM 
        users
        WHERE
        users.id = p_id;
    END|

DELIMITER ;

Call getUserById(2);