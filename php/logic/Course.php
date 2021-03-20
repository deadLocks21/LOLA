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
	* Image de la matière
	*
	*@var string
	*/
	private $picture;
	/**
	*
	*
	*@var bool
	*/
	private $display;
	/**
	* Admin de la Course
	*
	*@var User
	*/
	private $admin;
	
	/**
	 * Constructeur de la classe Course
	 * 
	 * @param int $id
	 * @param string $code
	 * @param string $name
	 * @param string @picture
	 * @param bool @display
	 * @param user @admin
	 */
	public function __construct( $id,  $code, $name, $picture, $display, $admin)
	{
		$this->id = $id;
        $this->code = $code;
		$this->name = $name;	
		$this->picture = $picture;
		$this->display = $display;
		$this->admin = $admin;
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
	 * Mutateur de $picture
	 * 
	 * @param string $picture
	 * 
	 */
	public function setPicture($picture) { $this->picture = $picture; }
	/**
	 * Assesseur de $picture
	 * 
	 * @return string
	 */
	public function getPicture() { return $this->picture;}
	
	/**
	 * Mutateur de $display
	 * 
	 * @param bool $display
	 * 
	 */
	public function setDisplay($display) { $this->display = $display; }
	/**
	 * Assesseur de $display
	 * 
	 * @return bool
	 */
	public function getDisplay() { return $this->display;}
	
	/**
	 * Mutateur de $admin
	 * 
	 * @param user $admin
	 * 
	 */
	public function seAdmin($admin) { $this->admin = $admin; }
	/**
	 * Assesseur de $admin
	 * 
	 * @return user
	 */
	public function getAdmin() { return $this->admin;}


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
	* Initialise Course avec une liste
	*
	* @param array
	*/
	public function hydrate(array $donnes)
	{
		foreach($donnes as $key => $value)
		{
			$method = 'set'.ucfirst ($key);

			if (method_exists($this, $method))
			{
				$this->$method($value);
			}
		}
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