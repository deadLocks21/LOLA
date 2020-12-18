DROP PROCEDURE IF EXISTS AddSoftware;

DELIMITER |

CREATE PROCEDURE AddSoftware(IN p_ID INT(11), IN p_Name VARCHAR(45),IN p_Version VARCHAR(45), IN p_UrlTuto VARCHAR(128), IN p_UrlSetup VARCHAR(128), IN p_Comment VARCHAR(128))
    BEGIN

        INSERT INTO Software

            (idSoftware,
            name,
            version,
            urltuto, 
            urlsetup, 
            comment)

        VALUES 
            (p_ID,
            p_Name,
            p_Version,
            p_UrlTuto,
            p_UrlSetup,
            p_Comment)

    END|

DELIMITER ;