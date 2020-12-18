<?php
class Course implements JsonSerializable
{
	private $id;
	private $code;
	private $name;
	private $softwares = array();

	
	public function __construct( $id,  $code, $name)
	{
	    $this->id = $id;
        $this->code = $code;
		$this->name = $name;	
	}



	public function getId() { return $this->id;}

	public function setCode($code) { $this->code = $code; }
	public function getCode() { return $this->code;}

	public function setName($name) { $this->name = $name; }
	public function getName() { return $this->name;}

	public function getSoftwares() {
	    return $this->softwares;
    }



	public function add($s)
	{
		array_push($this->softwares, $s);
	}



    public function jsonSerialize()
    {
        return [
            "id" => htmlentities(stripslashes($this->id), ENT_QUOTES),
            "code" => htmlentities(stripslashes($this->code), ENT_QUOTES),
            "name" => htmlentities(stripslashes($this->name), ENT_QUOTES),
            "softwares" => $this->softwares];
    }
}