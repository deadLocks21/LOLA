<?php
/**
 * Permet de stocker une liste de formations.
 * 
 * @package logic
 */
class SectorDirectory implements JsonSerializable
{
    /**
     * Formations stockées par l'objet.
     * 
     * @var array
     */
    private $sectors = array();

    /**
     * Ajoute d'une formation à la liste.
     * 
     * @param Sector $s
     */
    public function add($s)
    {
        array_push($this->sectors, $s);
    }

    /**
     * Assesseur de $sectors.
     * 
     * @return array
     */
    public function getSectors() {
        return $this->sectors;
    }



    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return ["sectors" => $this->sectors];
    }
}
