<?php
    declare(strict_types = 1);

    require_once("logic/Course.php");
    require_once("logic/Sector.php");
    require_once("logic/User.php");
    require_once("ToolsDAO.php");

    class CourseDAO {

        /**
         * Récupérer un module depuis la base de donnée
         */
        public static function get($id) {
            $toolsDAO = new ToolsDAO();

            $resultats = $toolsDAO->query("CALL GetCourse(?)", array($id));

            $code = $resultats[0][1];
            $name = $resultats[0][2];

            return new Course($id, $code, $name);
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
    
            $resultats = $toolsDAO->query("CALL AddCourse(?, ?, ?, ?)", array($code, $name, $idUser, $idSector));
        }

        /**
         * Mettre à jour un module dans la base de données
         */
        public static function update(Course $course, Sector $sector, User $user) {
            $toolsDAO = new ToolsDAO();

            $id = $course->getId();
            $code = $course->getCode();
            $label = $course->getLabel();
            $idUser = $user->getId();
            $idSector = $sector->getId();

            $resultats = $toolsDAO->query("CALL AlterSector(?, ?, ?, ?, ?)", array($id, $code, $name, $idUser, $idSector));
        }

        /**
         * Supprimer un module de la base de données
         */
        public static function delete($id) {
            $toolsDAO = new ToolsDAO();

            $resultats = $toolsDAO->query("CALL DeleteCourse(?)", array($id));
        }
    }
?>