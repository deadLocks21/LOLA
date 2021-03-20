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
	private $sector;
	/**
	 * Nom du semestre, ex: Semestre 01.
	 * 
	 * @var string
	 */
	private $semester;
	
	/**
	* Course que le sector possède
	*
	*/
	
	private $courses = array();
	
	/**
	 * Constructeur d'une formation
	 * 
	 * 
	 * @param int $id
	 * @param string $code
	 * @param string $label1
	 * @param string $label2
	 */
	public function __construct( $id,  $code, $sector, $semester)
	{
	    $this->id = $id;
        $this->code = $code;
		$this->sector = $sector;
		$this->semester = $semester;	
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
	 * Mutateur de $sector.
	 * 
	 * @param string $sector
	 */
	public function setSector($sector) { $this->sector = $sector; }
	/**
	 * Assesseur de $sector.
	 * 
	 * @return string
	 */
	public function getSector() { return $this->sector;}
	
	/**
	 * Mutateur de $semester.
	 * 
	 * @param string $semester
	 */
	public function setSemester($semester) { $this->semester = $semester; }
	/**
	 * Assesseur de $semester.
	 * 
	 * @return string
	 */
	public function getSemester() { return $this->semester;}
	
	/**
	* Assesseur de $courses
	*
	*
	* @return array
	*/
	
	public function getCourses() {return $this->courses;}


	/**
	* Ajoute une course au sector
	*
	* @param course $course
	*/
	public function addCourse($course)
	{
		array_push($this->courses, $course);
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
