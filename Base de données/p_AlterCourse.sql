DROP PROCEDURE IF EXISTS AlterCourse;

DELIMITER |

CREATE PROCEDURE AlterCourse(IN p_idCourse INT(11), IN p_code VARCHAR(100), IN p_name VARCHAR(255), IN p_idSector INT(11), IN p_idUser INT(11))

    BEGIN
        UPDATE Courses 
        SET 
            code = p_code,
            name = p_name,
            sector = p_idSector
        WHERE
            idCourse = p_idCourse;

        UPDATE ProfessorsManageCourses
        SET
        	professor = p_idUser,
        	course = p_idCourse
        WHERE
        	course = p_idCourse;
    END|

DELIMITER ;

CALL AlterCourse(45, "M0001", "Cours de test", 2, 2);