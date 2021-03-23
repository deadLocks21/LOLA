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
	 * Constructeur d'un utilisateur.
	 *
	 * @param int $id
	 * @param string $login
	 */
	public function __construct($id, $login)
	{
		$this->id = $id;
		$this->login = $login;
	}

	/**
	 * Mutateur de la variable $id.
	 *
	 * @param int $id
	 */
	public function setId($id)
	{
		$this->id = $id;
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
	 * Mutateur de la variable $id.
	 *
	 * @param string $login
	 */
	public function setLogin($login)
	{
		$this->login = $login;
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
}



?>