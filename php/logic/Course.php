<?php
/**
 * Représente un module.
 * 
 * @package logic
 */
class Course implements JsonSerializable
{
	/**
	 * Identifiant du module.
	 * 
	 * @var int
	 */
	private $id;
	/**
	 * Code d'un module, ex: M3302
	 * 
	 * @var string
	 */
	private $code;
	/**
	 * Nom d'un module, ex: Projet tutoré
	 * 
	 * @var string
	 */
	private $name;
	/**
	 * Liste des logiciels qui sont affecté à un module.
	 * 
	 * @var array
	 */
	private $softwares = array();

	
	/**
	 * Constructeur de la classe Course
	 * 
	 * @param int $id
	 * @param string $code
	 * @param string $name
	 */
	public function __construct( $id,  $code, $name)
	{
		$this->id = $id;
        $this->code = $code;
		$this->name = $name;	
	}
	
	
	
	/**
	 * Assesseur de $id
	 * 
	 * @return int
	 */
	public function getId() { return $this->id;}
	
	/**
	 * Mutateur de $code
	 * 
	 * @param string $code
	 * @return string
	 */
	public function setCode($code) { $this->code = $code; }
	/**
	 * Assesseur de $code
	 * 
	 * @return string
	 */
	public function getCode() { return $this->code;}
	
	/**
	 * Mutateur de $name
	 * 
	 * @param string $name
	 * @return string
	 */
	public function setName($name) { $this->name = $name; }
	/**
	 * Assesseur de $name
	 * 
	 * @return string
	 */
	public function getName() { return $this->name;}

	/**
	 * Assesseur de $softwares
	 * 
	 * @return array
	 */
	public function getSoftwares() {
	    return $this->softwares;
    }



	/**
	 * Permet d'ajouter un logiciel à la liste des logiciels.
	 * 
	 * @param Software $s
	 */
	public function add($s)
	{
		array_push($this->softwares, $s);
	}



    /**
	 * Permet de sérialiser un module
	 * 
     * @return array
     */
    public function jsonSerialize()
    {
        return [
            "id" => htmlentities(stripslashes($this->id), ENT_QUOTES),
            "code" => htmlentities(stripslashes($this->code), ENT_QUOTES),
            "name" => htmlentities(stripslashes($this->name), ENT_QUOTES),
            "softwares" => $this->softwares];
    }
}