<?php
declare(strict_types = 1);

/**
 * Permet de synthétiser les méthodes CRUD pour un module.
 *
 * @package database
 */
class CourseDAO {

    public static function getAll($id) {
        $toolsDAO = new ToolsDAO();

        $UaP = $toolsDAO->query("CALL GetCourses(?)", array($id));

        return $UaP;
    }

    /**
     * Récupérer un module depuis la base de donnée
     */
    public static function get($id) {
        $toolsDAO = new ToolsDAO();

        $UaP = $toolsDAO->query("CALL GetCourse(?)", array($id));

        return $UaP[0];
    }

    /**
     * Ajouter un nouveau module à la base de données
     */
    public static function create($code,$name,$picture,$display) {
        $toolsDAO = new ToolsDAO();

        $toolsDAO->call("CALL CreateCourse(?, ?, ?, ?)", array($code,$name,$picture,$display));
    }

    /**
     * Mettre à jour un module dans la base de données
     */
    public static function update($id,$code,$name,$picture,$display) {
        $toolsDAO = new ToolsDAO();

        $toolsDAO->call("CALL UpdateCourse(?, ?, ?, ?, ?)", array($id, $code, $name, $picture, $display));
    }

    /**
     * Supprimer un module de la base de données
     */
    public static function delete($id) {
        $toolsDAO = new ToolsDAO();

        $toolsDAO->call("CALL DeleteCourse(?)", array($id));
    }
}