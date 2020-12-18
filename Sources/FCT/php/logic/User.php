<?php
class User
{
	private $id;
	private $login;
	private $password;
	private $userType;
	
	public function __construct($id, $login, $password, $userType)
	{
		$this->id = $id;
		$this->login = $login;
		$this->password = $password;
		$this->userType = $userType;
	}
	
	
	public function getId()
	{
		return $this->id;
	}
	

	
	public function getLogin()
	{
		return $this->login;
	}
	

	
	public function getPassword()
	{
		return $this->password;
	}

	public function getUserType() {
	    return $this->userType;
    }


    public function save() {
	    return ["login" => $this->login, "userType" => $this->userType];
    }
}