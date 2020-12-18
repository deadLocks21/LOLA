<?php
class SectorDirectory implements JsonSerializable
{
    private $sectors = array();

    public function add($s)
    {
        array_push($this->sectors, $s);
    }

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
