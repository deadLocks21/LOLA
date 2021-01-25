<?php
/**
 * Permet de relier un logiciel avec la base de données.
 * 
 * @package database
 */
class SoftwareDAO {
    /**
     * Permet de récupérer un logiciel grâce à son id.
     * 
     * @param int $id
     * @return Software
     */
    public static function get(int $id){
        $tDAO = new ToolsDAO();

        $temp = $tDAO->query("CALL GetSoftware(?);",array($id));
        $id = $temp[0][0];
        $name = $temp[0][1];
        $version = $temp[0][2];
        $urlSetup = $temp[0][3];
        $urlTuto = $temp[0][4];
        $comment = $temp[0][5];

        $software = new Software($id,$name,$version,$urlSetup,$urlTuto,$comment);

        return $software;
    }

    /**
     * Permet d'ajouter un nouveau logiciel dans la db.
     * 
     * @param Software $software
     * @param Course $course
     */
    public static function create(Software $software, Course $course)
    {
        $tDAO = new ToolsDAO();

        $name = $software->getName();
        $version = $software->getVersion();
        $urlSetup = $software->getURLSetup();
        $urlTuto = $software->getURLTuto();
        $comment = $software->getComment();
        $courseId = $course->getId();

        $tDAO->query("CALL AddSoftware(?, ?, ?, ?, ?, ?);",array($name, $version, $urlTuto, $urlSetup, $comment, $courseId));
    }

    /**
     * Permet de mettre un logiciel à jour.
     * 
     * @param Software $Software
     */
    public static function update(Software $Software){
        $tDAO = new ToolsDAO();

        $id = $Software->getId();
        $name = $Software->getName();
        $version = $Software->getVersion();
        $urlSetup = $Software->getURLSetup();
        $urlTuto = $Software->getURLTuto();
        $comment = $Software->getComment();

        $tDAO->query("CALL AlterSoftware(?, ?, ?, ?, ?, ?);",array($id,$name,$version,$urlSetup,$urlTuto,$comment));
    }

    /**
     * Supprime un logiciel.
     * 
     * @param int $id
     */
    public static function delete(int $id) {
        $toolsDAO = new ToolsDAO();

        $toolsDAO->query("CALL DeleteSoftware(?)", array($id));
    }
}