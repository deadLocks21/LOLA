DROP PROCEDURE IF EXISTS AlterSoftware;

DELIMITER |

CREATE PROCEDURE AlterSoftware(IN p_ID INT(11), IN p_Name VARCHAR(100),IN p_Version VARCHAR(100), IN p_UrlSetup VARCHAR(100),IN p_UrlTuto VARCHAR(100), IN p_Comment VARCHAR(100))
    BEGIN

        UPDATE Softwares
        SET 
            name=p_Name,
            version = p_Version,
            urltuto = p_UrlTuto,
            urlsetup = p_UrlSetup,
            commentary = p_Comment

        WHERE idSoftware=p_ID;

    END|

DELIMITER ;