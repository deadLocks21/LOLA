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

        $UaP = $tDAO->query("CALL GetUserByLogin(?);", array($login));

        return new User($UaP[0]['id'], $UaP[0]['login']);
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

        $UaP = $tDAO->query("CALL GetUserById(?);", array($id));

        return new User($UaP[0]['id'], $UaP[0]['login']);
    }
}
