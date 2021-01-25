<?php
/**
 * Permet de récupérer des listes de modules en fonction de ce que l'on recherche.
 * 
 * @package database
 */
class CourseDirectoryDao
{
	/**
	 * Permet de récupérez une liste de cours en fonction de la catégorie du login fournit.
	 * 
	 * @param string $userLogin
	 * @return CourseDirectory
	 */
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
	private static function getProfessor($profLogin) : CourseDirectory
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

		return $courseDirectory;
	}

	private static function getAll() : CourseDirectory 
	{
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
	
	/**
	 * Récupère la liste des modules pour une formation donnée. Attention, à utiliser par l'administrateur.
	 * 
	 * @param string|int $sector
	 * @return CourseDirectory
	 */
	public static function getCoursesBySectorAdmin($sector) : CourseDirectory
	{
        $courseDirectory = new CourseDirectory();
        $toolsDAO = new ToolsDAO();

		$courses = $toolsDAO->query("CALL GetCoursesBySectorAdmin(?);", array($sector));

        foreach ($courses as $c) {
			$course = new Course($c['idCourse'], $c['code'], $c['name']);
			$courseDirectory->add($course);
		}

        return $courseDirectory;
	}
	
	/**
	 * Récupère la liste des modules pour une formation donnée. Attention, à utiliser par les profs.
	 * 
	 * @param string|int $sector
	 * @return CourseDirectory
	 */
	public static function getCoursesBySectorProfessor($sector) : CourseDirectory
	{
        $courseDirectory = new CourseDirectory();
        $toolsDAO = new ToolsDAO();

        $courses = $toolsDAO->query("CALL GetCoursesBySectorProfessor(?);", array($sector));

        foreach ($courses as $c) {
			$course = new Course($c['idCourse'], $c['code'], $c['name']);
			$courseDirectory->add($course);
		}

        return $courseDirectory;
    }
}

