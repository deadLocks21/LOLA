<?php
declare(strict_types = 1);

/**
 * Permet de synthétiser les méthodes CRUD pour un module.
 * 
 * @package database
 */
class CourseDAO {
    /**
     * Récupérer un module depuis la base de donnée
     */
    public static function get($id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->query("CALL GetCourseSimple(?)", array($id));
        
        $code = $resultats[0]['code'];
        $name = $resultats[0]['name'];
        
        $course = new Course($id, $code, $name);
        
        $resultats = $toolsDAO->query("CALL GetCourse(?)", array($id));
        foreach($resultats as $s)
            $course->add(new Software($s['idSoftware'], $s['name'], $s['version'], $s['urlSetup'], $s['urlTuto'], $s['commentary']));

        return $course;
    }

    /**
     * Ajouter un nouveau module à la base de données
     */
    public static function create(Course $course, Sector $sector, User $user) {
        $toolsDAO = new ToolsDAO();

        $code = $course->getCode();
        $name = $course->getName();
        $idUser = $user->getId();
        $idSector = $sector->getId();

        $toolsDAO->call("CALL AddCourse(?, ?, ?, ?)", array($code, $name, $idUser, $idSector));
    }

    /**
     * Mettre à jour un module dans la base de données
     */
    public static function update(Course $course, Sector $sector, User $user) {
        $toolsDAO = new ToolsDAO();

        $id = $course->getId();
        $code = $course->getCode();
        $name = $course->getName();
        $idUser = $user->getId();
        $idSector = $sector->getId();

        $toolsDAO->call("CALL AlterCourse(?, ?, ?, ?, ?)", array($id, $code, $name, $idSector, $idUser));
    }

    /**
     * Supprimer un module de la base de données
     */
    public static function delete($id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->query("CALL DeleteCourse(?)", array($id));
    }
}