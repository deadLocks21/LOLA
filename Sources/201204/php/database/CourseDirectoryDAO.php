<?php
class CourseDirectoryDao
{
	public static function get($userLogin) : CourseDirectory 
	{
		$user = UserDao::getUser($userLogin);

		switch($user->getUserType()) 
		{
			case 1:
				$courseDirectory = CourseDirectoryDAO::getUser($userLogin);
			break;
			case 2:
				$courseDirectory = CourseDirectoryDAO::getProfessor($userLogin);
			break;
			case 3:
				$courseDirectory = CourseDirectoryDAO::getAll();
			break;
			default:
				$courseDirectory = new CourseDirectory();
		}

		return $courseDirectory;
	}

    private static function getUser($userLogin) : CourseDirectory
    {
        $toolsDAO = new ToolsDAO();

        $softwares = $toolsDAO->query("CALL GetUserSoftwares(?);", array($userLogin));

		$courses = new CourseDirectory();

		// Récupère les courses
		foreach ($softwares as $s) {
			$course = $courses->getCourse($s['code']);

			if ($course == null) {
				$course = new Course($s['idCourse'], $s['code'], $s['CourseName']);
				$courses->add($course);
			}

			$software = new Software($s['idSoftware'], $s['name'], "", "", "", "");
			$course->add($software);
		}

        return $courses;
	}
	
	/**
	 * Récupère tous es logiciels auxquels un professeur est référent
	  */
	public static function getProfessor($profLogin) : CourseDirectory
	{
		$courseDirectory = new CourseDirectory();
		$toolsDAO = new ToolsDAO();
		$softwares = $toolsDAO->query("CALL GetProfessorSoftwares(?);", array($profLogin));
		
		// Récupère les courses
		foreach ($softwares as $s) {
			$course = $courseDirectory->getCourse($s['code']);

			if ($course == null) {
				$course = new Course($s['idCourse'], $s['code'], $s['CourseName']);
				$courseDirectory->add($course);
			}

			$software = new Software($s['idSoftware'], $s['name'], "", "", "", "");
			$course->add($software);
		}

		/*
		// For tests ^^
		$c01 = new Course(1, "M0001", "Module 01");
		$courseDirectory->add($c01);
		$c02 = new Course(2, "M0002", "Module 02");
		$courseDirectory->add($c02);
		$c03 = new Course(3, "M0003", "Module 03");
		$courseDirectory->add($c03);

		$c01->add(new Software(1, "Logiciel 01", "", "", "", "", ""));
		$c01->add(new Software(2, "Logiciel 02", "", "", "", "", ""));
		$c02->add(new Software(3, "Logiciel 03", "", "", "", "", ""));
		$c03->add(new Software(4, "Logiciel 04", "", "", "", "", ""));
		$c03->add(new Software(5, "Logiciel 05", "", "", "", "", ""));
		$c03->add(new Software(6, "Logiciel 06", "", "", "", "", ""));
		*/

		return $courseDirectory;
	}

	private static function getAll() : CourseDirectory 
	{
        $courseDirectory = new CourseDirectory();

        // Procédure stockée s'appelle GetAllSoftwares
        // Implémente la connection et l'initialisation en t'inspirant de get($userLogin)
        // TODO Implémenter

		$courses = new CourseDirectory();
		
		$toolsDAO = new ToolsDAO();
		
		$softwares = $toolsDAO->query("CALL GetAllSoftwares();", array());
		
		foreach ($softwares as $s) {
			$course = $courses->getCourse($s['code']);

			if ($course == null) {
				$course = new Course($s['idCourse'], $s['code'], $s['CourseName']);
				$courses->add($course);
			}

			$software = new Software($s['idSoftware'], $s['name'], "", "", "", "");
			$course->add($software);
		}
		
		return $courses;
    }
}

