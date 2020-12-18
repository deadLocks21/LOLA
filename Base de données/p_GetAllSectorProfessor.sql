DROP PROCEDURE IF EXISTS GetAllSectorProfessor;

DELIMITER |

CREATE PROCEDURE GetAllSectorProfessor(IN p_login VARCHAR(100))
    BEGIN
    
		SELECT
			DISTINCT Sectors.idSector, Sectors.code, Sectors.label
		FROM
			Sectors JOIN Courses ON Sectors.idSector = Courses.sector
			JOIN ProfessorsManageCourses ON Courses.idCourse = ProfessorsManageCourses.course
			JOIN Users ON ProfessorsManageCourses.professor = Users.idUser
			JOIN UsersTypes ON Users.userType = UsersTypes.idType
			WHERE Users.login = p_login;

    END|
	
DELIMITER ;

