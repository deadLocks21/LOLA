<?php
declare(strict_types = 1);

class SectorDAO {

    /**
     * Obtenir un secteur via son ID
     */
    public static function get($id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->query("CALL GetSector(?)", array($id));

        $code = $resultats[0][1];
        $label = $resultats[0][2];

        return new Sector($id, $code, $label);
    }
    
    /**
     * Ajouter un nouveau secteur dans la base de donnés
     */
    public static function create(Sector $sector) {
        echo "OK";
        $toolsDAO = new ToolsDAO();
        $code = $sector->getCode();
        $label = $sector->getLabel();

        $resultats = $toolsDAO->query("CALL AddSector(?, ?)", array($code, $label));
    }

    /**
     * Met un secteur à jour dans la base de données
     */
    public static function update(Sector $sector) {
        $toolsDAO = new ToolsDAO();
        $id = $sector->getId();
        $code = $sector->getCode();
        $label = $sector->getLabel();

        $resultats = $toolsDAO->query("CALL AlterSector(?, ?, ?)", array($id, $code, $label));
    }

    /**
     * Supprime un secteur de la base de données via son ID
     */
    public static function delete(int $id) {
        $toolsDAO = new ToolsDAO();

        $resultats = $toolsDAO->query("CALL DeleteSector(?)", array($id));
    }
}