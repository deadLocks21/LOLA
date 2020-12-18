DROP PROCEDURE IF EXISTS AddCourse;

DELIMITER |

CREATE PROCEDURE AddCourse(IN p_Code VARCHAR(100), IN p_Name VARCHAR(100), IN p_idUser INT(11), IN p_idSector INT(11))
    BEGIN

        INSERT INTO Courses (
            code,
            name,
            sector
           	)
		VALUES (
            p_Code,
            p_Name,
            p_idSector
		);

		INSERT INTO ProfessorsManageCourses (
			professor,
			course
			)
        VALUES (
        	p_idUser,
        	(SELECT LAST_INSERT_ID())
        );
    END|

DELIMITER ;

CALL AddCourse("M0000", "Cours de test", 1, 1);