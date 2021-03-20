<?php
/**
 * Opérations sur les utilisateurs de la db.
 * 
 * @package database
 */
class UserDao {

    /**
     * Permet de récupérer un utilisateur de la db.
     * 
     * @param string $login
     * @return User
     */
    public static function getUserByLogin(string $login) : User
    {
        $tDAO = new ToolsDAO();

        $UaP = $tDAO->query("CALL GetUser(?);", array($login));

        return new User($UaP[0]['idUser'], $UaP[0]['login'], $UaP[0]['password'], $UaP[0]['userType']);
    }
	
	/**
     * Permet de récupérer un utilisateur de la db.
     * 
     * @param string $login
     * @return User
     */
    public static function getUserById(int $id) : User
    {
        $tDAO = new ToolsDAO();

        $UaP = $tDAO->query("CALL GetUser(?);", array($login));

        return new User($UaP[0]['idUser'], $UaP[0]['login'], $UaP[0]['password'], $UaP[0]['userType']);
    }
}
