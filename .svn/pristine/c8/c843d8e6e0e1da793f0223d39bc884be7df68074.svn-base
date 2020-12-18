DROP PROCEDURE IF EXISTS GetProfessorSoftwares;

DELIMITER |

CREATE PROCEDURE GetProfessorSoftwares(IN p_login VARCHAR(100))

    BEGIN
		SELECT 
			C.idCourse, C.code, C.name AS CourseName, Soft.idSoftware, Soft.name
		FROM 
			Softwares AS Soft 
			JOIN SoftwaresBelongingToCourses AS SBTC ON Soft.idSoftware = SBTC.software
			JOIN Courses AS C ON SBTC.course = C.idCourse
			JOIN ProfessorsManageCourses AS M ON C.idCourse = M.course
			JOIN Users AS U ON M.professor = U.idUser
		WHERE
			U.login = p_login
		ORDER BY
			C.code ASC,
			Soft.name ASC;
    END|

DELIMITER ;

CALL GetProfessorSoftwares("aa546211");