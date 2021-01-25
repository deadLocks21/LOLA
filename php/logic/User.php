<?php
/**
 * Classe représentant un utilisateur.
 * 
 * @package logic
 */
class User
{
	/**
	 * Identifiant de l'utilisateur.
	 * 
	 * @var int
	 */
	private $id;
	/**
	 * Login de l'utilisateur, ex: th039507
	 * 
	 * @var string
	 */
	private $login;
	/**
	 * Mot de passe, ex: azerty123
	 * 
	 * @var string
	 */
	private $password;
	/**
	 * Type de l'utilisateur, 1 : élève, 2 : profs et 3 : administrateur. 
	 * 
	 * @var int
	 */
	private $userType;
	
	/**
	 * Constructeur d'un utilisateur.
	 * 
	 * @param int $id
	 * @param string $login
	 * @param string $password
	 * @param int $userType
	 */
	public function __construct($id, $login, $password, $userType)
	{
		$this->id = $id;
		$this->login = $login;
		$this->password = $password;
		$this->userType = $userType;
	}
	
	
	/**
	 * Assesseur de la variable $id.
	 * 
	 * @return int
	 */
	public function getId()
	{
		return $this->id;
	}
	
	/**
	 * Assesseur de $login.
	 * 
	 * @return string
	 */
	public function getLogin()
	{
		return $this->login;
	}
		
	/**
	 * Assesseur de $password.
	 * 
	 * @return string
	 */
	public function getPassword()
	{
		return $this->password;
	}

	/**
	 * Assesseur de $userType.
	 * 
	 * @return int
	 */
	public function getUserType() {
	    return $this->userType;
    }


    /**
	 * Sauvegarde d'un utilisateur, notamment pour la session.
	 * 
     * @return array
     */
    public function save() {
	    return ["login" => $this->login, "userType" => $this->userType];
    }
}