<?php
declare(strict_types = 1);

/**
 * Permet d'effectuer les opérations CRUD sur une formation.
 *
 * @package database
 */
class SectorDAO {

    /**
     * Obtenir un secteur via son ID
     */
    public static function get($id) {
        $toolsDAO = new ToolsDAO();

        $UaP = $toolsDAO->query("CALL GetSector(?)", array($id));

        return new Sector($UaP[0]['id'], $UaP[0]['code'],$UaP[0]['sector'], $UaP[0]['semester']);
    }

    /**
     * Ajouter un nouveau secteur dans la base de donnés
     */
    public static function create($code,$sector,$semester) {

        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->call("CALL CreateSector(?, ?, ?)", array($code,$sector,$semester));
    }

    /**
     * Met un secteur à jour dans la base de données
     */
    public static function update($id,$code,$sector,$semester) {
        $toolsDAO = new ToolsDAO();


        $resultats = $toolsDAO->call("CALL AlterSector(?, ?, ?, ?)", array($id,$code,$sector,$semester));
    }

    /**
     * Supprime un secteur de la base de données via son ID
     */
    public static function delete($id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->call("CALL DeleteSector(?)", array($id));
    }
}