<?php
class UserDao {
    public static function existsNGood(string $login, string $password)
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

    public static function getUser(string $login)
    {
        $tDAO = new ToolsDAO();

        $UaP = $tDAO->query("CALL GetUser(?);", array($login));

        return new User($UaP[0]['idUser'], $UaP[0]['login'], $UaP[0]['password'], $UaP[0]['userType']);
    }
}
