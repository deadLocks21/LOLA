<?php
declare(strict_types = 1);

class SectorDirectoryDAO {

    /**
     * Récupère les secteurs d'un utilisateur
     */
    public static function get(User $user) {
        $sectorDirectory = null;

        switch($user->getUserType()) 
        {
            case 2:
                $sectorDirectory = self::getProfessor($user);
                break;
            case 3:
                $sectorDirectory = self::getAdmin($user);
                break;
            default:
                $sectorDirectory = new SectorDirectory();
        }

        return $sectorDirectory;
    }

    /**
     * Récupère les secteurs d'un professeur
     */
    private static function getProfessor(User $user) {
        $sectorDirectory = new SectorDirectory();
        $toolsDAO = new ToolsDAO();

        $sectors = $toolsDAO->query("CALL GetAllSectorProfessor(?);", array($user->getLogin()));

        foreach ($sectors as $s) {
            $sector = SectorDAO::get($s['idSector']);

            $sectorDirectory->add($sector);
        }

        return $sectorDirectory;
    }

    /**
     * Récupère les secteurs d'un administrateur
     */
    private static function getAdmin(User $user) {
        $sectorDirectory = new SectorDirectory();
        $toolsDAO = new ToolsDAO();

        $sectors = $toolsDAO->query("CALL GetAllSectorsAdmin();", array());

        foreach ($sectors as $s) {
            $sector = SectorDAO::get($s['idSector']);

            $sectorDirectory->add($sector);
        }

        return $sectorDirectory;
    }
}
