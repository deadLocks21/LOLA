DROP PROCEDURE IF EXISTS GetAllSoftwares;

DELIMITER |

CREATE PROCEDURE GetAllSoftwares()
    BEGIN
    
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses As C ON SBTC.course = C.idCourse
			JOIN Sectors As S ON C.sector = S.idSector
			JOIN Users As U ON S.idSector = U.sector
		ORDER BY
			C.code ASC,
			Soft.name ASC;

    END|
DELIMITER ;
