<?php
/**
 * Classe représentant un logiciel.
 * 
 * @package logic
 */
class Software implements JsonSerializable
{
	/**
	 * Identifiant d'un logiciel.
	 * 
	 * @var int
	 */
	private $id;
	/**
	 * Nom du logiciel.
	 * 
	 * @var string
	 */
	private $name;
	/**
	 * Version du logiciel.
	 * 
	 * @var string
	 */
	private $version;
	/**
	 * URL du tuto.
	 * 
	 * @var string
	 */
	private $tuto;
	/**
	 * URL du setup
	 * 
	 * @var string
	 */
	private $setup;
	/**
	 * Commentaire sur le logiciel.
	 * 
	 * @var string
	 */
	private $commentary;

	/**
	* Image du logiciel
	*
	* @var string
	*/
	private $picture;

	/**
	* ???
	*
	* @var bool
	*/
	private $display;



	/**
	 * Constructeur d'un logiciel.
	 * 
	 * @param int $id
	 * @param string $name
	 * @param string $version
	 * @param string $urlSetup
	 * @param string $urlTuto
	 * @param string $comment
	 */
	public function __construct($id, $name, $version, $tuto, $setup, $commentary, $picture, $display) {
	    $this->id = $id;
		$this->name = $name;
		$this->version = $version;
		$this->tuto = $tuto;
		$this->setup = $setup;
		$this->commentary = $commentary;
		$this->picture = $picture;
		$this->display = $display;
	}

	/**
	 * Conversion de l'objet en string pour l'affichage.
	 * 
	 * @return string
	 */
	public function __toString() { return sprintf("[%d] %s", $this->id, $this->name); }


	/**
	 * Mutateur de $id.
	 * 
	 * @param int $id
	 */
	public function setId($id) { $this->id = $id; }
	/**
	 * Assesseur de $id.
	 * 
	 * @return int
	 */
	public function getId() { return $this->id; }
	
	/**
	 * Mutateur de $name.
	 * 
	 * @param string $name
	 */
	public function setName($name) { $this->name = $name; }
	/**
	 * Assesseur de $name.
	 * 
	 * @return string
	 */
	public function getName() { return $this->name; }

	/**
	 * Mutateur de $version.
	 * 
	 * @param string $version
	 */
	public function setVersion($version) { $this->version = $version; }
	/**
	 * Assesseur de $version.
	 * 
	 * @return string
	 */
	public function getVersion() { return $this->version; }

	/**
	 * Mutateur de $tuto.
	 * 
	 * @param string $tuto
	 */
	public function setTuto($tuto) { $this->tuto = $tuto; }
	/**
	 * Assesseur de $tuto.
	 * 
	 * @return string
	 */
	public function getTuto() { return $this->tuto; }

	/**
	 * Mutateur de $setup.
	 * 
	 * @param string $setup
	 */
	public function setSetup($setup) { $this->setup = $setup; }
	/**
	 * Assesseur de $setup.
	 * 
	 * @return string
	 */
	public function getSetup() { return $this->setup; }

	/**
	 * Mutateur de $commentary.
	 * 
	 * @param string $commentary
	 */
	public function setCommentary($commentary) { $this->commentary = $commentary; }
	/**
	 * Assesseur de $commentary.
	 * 
	 * @return string
	 */
	public function getCommentary() { return $this->commentary; }

	/**
	 * Mutateur de $picture.
	 * 
	 * @param string $picture
	 */
	public function setPicture($picture) { $this->picture = $picture; }
	/**
	 * Assesseur de $picture.
	 * 
	 * @return string
	 */
	public function getPicture() { return $this->picture; }
	
	/**
	 * Assesseur de $display.
	 * 
	 * @return bool
	 */
	public function getDisplay() { return $this->display; }

	/**
	 * Mutateur de $display.
	 * 
	 * @param bool $display
	 */
	public function setDisplay($display) { $this->display = $display; }
	



    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return [
            'id' => htmlentities(stripslashes($this->id), ENT_QUOTES),
            'name'=> htmlentities(stripslashes($this->name), ENT_QUOTES),
            'version' => htmlentities(stripslashes($this->version), ENT_QUOTES),
            'tuto' => htmlentities(stripslashes($this->tuto), ENT_QUOTES),
            'setup' => htmlentities(stripslashes($this->setup), ENT_QUOTES),
            'commentary' => htmlentities(stripslashes($this->commentary), ENT_QUOTES),
            'picture' => htmlentities(stripslashes($this->picture), ENT_QUOTES),
            'display' => htmlentities(stripslashes($this->display), ENT_QUOTES)
        ];
	}
	
	/**
	 * Permet d'hydrater une formation.
	 * 
     * @param array $datas
     */
	public function hydrate(array $datas)
	{
		foreach ($datas as $key => $value)
		{
		  $method = 'set'.ucfirst($key);
		  if (method_exists($this, $method))
			$this->$method($value);
		}
	}
}