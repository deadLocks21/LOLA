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
        $tuto = $temp[0][3];
        $setup = $temp[0][4];
        $commentary = $temp[0][5];
        $picture = $temp[0][6];
        $display = $temp[0][7];

        $software = new Software($id,$name,$version,$tuto,$setup,$commentary,$picture,$display);

        return $software;
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