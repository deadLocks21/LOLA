<?php
/**
 * Opérations sur les utilisateurs de la db.
 * 
 * @package database
 */
class UserDao {
    /**
     * Permet de vérifier si un utilisateur existe ou non et si le couple mot de passe identifiant est bon.
     * 
     * @param string $login
     * @param string $password
     * 
     * @return bool
     */
    public static function existsNGood(string $login, string $password) : bool
    {
        $tDAO = new ToolsDAO();
        $user = false;

        $UaP = $tDAO->query("CALL UserAndPass(?, ?);", array($login, $password));

        $loginTrue = $UaP[0][0];

        if($loginTrue == 1){
            $user = true;
        }

        return $user;
    }

    /**
     * Permet de récupérer un utilisateur de la db.
     * 
     * @param string $login
     * @return User
     */
    public static function getUser(string $login) : User
    {
        $tDAO = new ToolsDAO();

        $UaP = $tDAO->query("CALL GetUser(?);", array($login));

        return new User($UaP[0]['idUser'], $UaP[0]['login'], $UaP[0]['password'], $UaP[0]['userType']);
    }
}
