DROP PROCEDURE IF EXISTS GetUserSoftwares;

DELIMITER |

CREATE PROCEDURE GetUserSoftwares(IN p_login VARCHAR(100))
    BEGIN
    
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses As C ON SBTC.course = C.idCourse
			JOIN Sectors As S ON C.sector = S.idSector
			JOIN Users As U ON S.idSector = U.sector
		WHERE 
			U.login = p_login
		ORDER BY
			C.code ASC,
			Soft.name ASC;
			

    END|

DELIMITER ;

CALL GetUserSoftwares('cc145798');