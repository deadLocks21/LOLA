<?php
/**
 * Permet de relier un logiciel avec la base de données.
 *
 * @package database
 */
class SoftwareDAO {
    public static function getAll($id) {
        $toolsDAO = new ToolsDAO();
        
        $softwares = $toolsDAO->query("CALL GetSoftwares(?)", array($id));

        return $softwares;
    }

    /**
     * Permet de récupérer un logiciel grâce à son id.
     *
     * @param int $id
     * @return Software
     */
    public static function get(int $id){
        $tDAO = new ToolsDAO();

        $temp = $tDAO->query("CALL GetSoftware(?);",array($id));
    
        return $temp[0];
    }

    /**
     * Permet d'ajouter un nouveau logiciel dans la db.
     *
     * @param Software $software
     * @param Course $course
     */
    public static function create($name,$version,$tuto,$setup,$commentary,$picture,$display)
    {
        $tDAO = new ToolsDAO();

        $tDAO->call("CALL CreateSoftware(?, ?, ?, ?, ?, ?, ?);",array($name,$version,$tuto,$setup,$commentary,$picture,$display));
    }

    /**
     * Permet de mettre un logiciel à jour.
     *
     * @param Software $Software
     */
    public static function update($id,$name,$version,$tuto,$setup,$commentary,$picture,$display){
        $tDAO = new ToolsDAO();


        $tDAO->call("CALL UpdateSoftware(?, ?, ?, ?, ?, ?, ?, ?);",array($id,$name,$version,$tuto,$setup,$commentary,$picture,$display));
    }

    /**
     * Supprime un logiciel.
     *
     * @param int $id
     */
    public static function delete(int $id) {
        $toolsDAO = new ToolsDAO();

        $toolsDAO->call("CALL DeleteSoftware(?)", array($id));
    }
}