DROP PROCEDURE IF EXISTS UpdateSector;

DELIMITER |

CREATE PROCEDURE UpdateSector(IN p_id INT, IN p_code VARCHAR(41), IN p_sector VARCHAR(97), IN p_semester VARCHAR(97))
    BEGIN
		UPDATE Sectors
        SET
        code = p_code,
        sector = p_sector,
		semester = p_semester
        WHERE 
        id = p_id;
    END|

DELIMITER ;



