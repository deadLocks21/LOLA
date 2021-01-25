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
	 * URL du setup.
	 * 
	 * @var string
	 */
	private $urlSetup;
	/**
	 * URL du tutoriel
	 * 
	 * @var string
	 */
	private $urlTuto;
	/**
	 * Commentaire sur le logiciel.
	 * 
	 * @var string
	 */
	private $comment;



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
	public function __construct($id, $name, $version, $urlSetup, $urlTuto, $comment) {
	    $this->id = $id;
		$this->name = $name;
		$this->version = $version;
		$this->urlSetup = $urlSetup;
		$this->urlTuto = $urlTuto;
		$this->comment = $comment;
	}

	/**
	 * Conversion de l'objet en string pour l'affichage.
	 * 
	 * @return string
	 */
	public function __toString() { return sprintf("[%d] %s", $this->id, $this->name); }



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
	 * Mutateur de $urlSetup.
	 * 
	 * @param string $urlSetup
	 */
	public function setUrlSetup($urlSetup) { $this->urlSetup = $urlSetup; }
	/**
	 * Assesseur de $urlSetup.
	 * 
	 * @return string
	 */
	public function getUrlSetup() { return $this->urlSetup; }

	/**
	 * Mutateur de $urlTuto.
	 * 
	 * @param string $urlTuto
	 */
	public function setUrlTuto($urlTuto) { $this->urlTuto = $urlTuto; }
	/**
	 * Assesseur de $urlTuto.
	 * 
	 * @return string
	 */
	public function getUrlTuto() { return $this->urlTuto; }

	/**
	 * Mutateur de $comment.
	 * 
	 * @param string $comment
	 */
	public function setComment($comment) { $this->comment = $comment; }
	/**
	 * Assesseur de $comment.
	 * 
	 * @return string
	 */
	public function getComment() { return $this->comment; }



    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return [
            'id' => htmlentities(stripslashes($this->id), ENT_QUOTES),
            'name'=> htmlentities(stripslashes($this->name), ENT_QUOTES),
            'version' => htmlentities(stripslashes($this->version), ENT_QUOTES),
            'urlSetup' => htmlentities(stripslashes($this->urlSetup), ENT_QUOTES),
            'urlTuto' => htmlentities(stripslashes($this->urlTuto), ENT_QUOTES),
            'comment' => htmlentities(stripslashes($this->comment), ENT_QUOTES)
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