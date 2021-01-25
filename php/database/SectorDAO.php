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

        $resultats = $toolsDAO->query("CALL GetSector(?)", array($id));

        $code = $resultats[0][1];
        $label1 = $resultats[0][2];
        $label2 = $resultats[0][3];

        return new Sector($id, $code, $label1, $label2);
    }
    
    /**
     * Ajouter un nouveau secteur dans la base de donnés
     */
    public static function create(Sector $sector) {
        echo "OK";
        $toolsDAO = new ToolsDAO();
        $code = $sector->getCode();
        $label1 = $sector->getLabel1();
        $label2 = $sector->getLabel2();

        $resultats = $toolsDAO->query("CALL AddSector(?, ?, ?)", array($code, $label1, $label2));
    }

    /**
     * Met un secteur à jour dans la base de données
     */
    public static function update(Sector $sector) {
        $toolsDAO = new ToolsDAO();
        $id = $sector->getId();
        $code = $sector->getCode();
        $label1 = $sector->getLabel1();
        $label2 = $sector->getLabel2();

        $resultats = $toolsDAO->query("CALL AlterSector(?, ?, ?, ?)", array($id, $code, $label1, $label2));
    }

    /**
     * Supprime un secteur de la base de données via son ID
     */
    public static function delete(int $id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->query("CALL DeleteSector(?)", array($id));
    }
}