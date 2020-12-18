DROP PROCEDURE IF EXISTS UserAndPass;


DELIMITER |
CREATE PROCEDURE UserAndPass(IN p_login VARCHAR(100), IN p_pass VARCHAR(100))
    BEGIN
		DECLARE l_pass VARCHAR(100);
    
        DROP TABLE IF EXISTS res;
        CREATE TABLE res(r INT);
		
        SELECT password INTO l_pass FROM Users WHERE login=p_login;
        INSERT INTO res VALUES (IF(p_pass=l_pass, 1, 0));
		
		SELECT * FROM res;
		
		DROP TABLE res;
    END|
DELIMITER ;


CALL UserAndPass('aa546211', 'azerty123');