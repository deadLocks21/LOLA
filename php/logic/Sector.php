<?php
/**
 * Représente une formations avec toutes les informations élementaires sur cette dernière.
 *  
 * @package logic
 */
class Sector implements JsonSerializable
{
    /**
	 * Identifiant de la formation
	 * 
     * @var int
     */
    private $id;
	/**
	 * Code de la formation, ex: DUT INFO S3
	 * 
	 * @var string
	 */
	private $code;
	/**
	 * Label1 de la formation, normalement, nom de la foration, ex: DUT Informatique.
	 * 
	 * @var string
	 */
	private $label1;
	/**
	 * Label2 de la formation, normalement, nom du semestre, ex: Semestre 01.
	 * 
	 * @var string
	 */
	private $label2;
	
	/**
	 * Constructeur d'une formation
	 * 
	 * 
	 * @param int $id
	 * @param string $code
	 * @param string $label1
	 * @param string $label2
	 */
	public function __construct( $id,  $code, $label1, $label2)
	{
	    $this->id = $id;
        $this->code = $code;
		$this->label1 = $label1;
		$this->label2 = $label2;	
	}


    /**
	 * Mutateur de $id. Privé et utilisé pour l'hydratation.
	 * 
     * @param int $id
     */
    private function setId($id) { $this->id = $id;}
	/**
	 * Assesseur de $id;
	 * 
	 * @return int
	 */
	public function getId() { return $this->id;}

	/**
	 * Mutateur de $code.
	 * 
	 * @param string $code
	 */
	public function setCode($code) { $this->code = $code; }
	/**
	 * Assesseur de $code.
	 * 
	 * @return string
	 */
	public function getCode() { return $this->code;}

	/**
	 * Assesseur de $label1.
	 * 
	 * @param string $label1
	 */
	public function setLabel1($label1) { $this->label1 = $label1; }
	/**
	 * Mutateur de $label1
	 * 
	 * @return string
	 */
	public function getLabel1() { return $this->label1;}

	/**
	 * Assesseur de $label2.
	 * 
	 * @param string $label2
	 */
	public function setLabel2($label2) { $this->label2 = $label2; }
	/**
	 * Mutateur de $label2
	 * 
	 * @return string
	 */
	public function getLabel2() { return $this->label2;}
	

    /**
     * @inheritDoc
     */
    public function jsonSerialize()
    {
        return [
            "id" => htmlentities(stripslashes($this->id), ENT_QUOTES),
            "code" => htmlentities(stripslashes($this->code), ENT_QUOTES),
            "label1" => htmlentities(stripslashes($this->label1), ENT_QUOTES),
            "label2" => htmlentities(stripslashes($this->label2), ENT_QUOTES)];
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
