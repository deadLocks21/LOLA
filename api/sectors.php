<?php
require_once "../php/functions.php";
sectorsAPI();

/**
 * Permet de récupérer la liste des formations d'un utilisateur..
 * 
 * @api
 * @package API
 */
function sectorsAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];

    switch($request_method)
    {
        case 'GET':
            $login = $_GET['login'];
            if(!empty($login)){
                $user = UserDao::getUser($login);
                $sectorDirectory = SectorDirectoryDAO::get($user);
                header('Content-Type: application/json');
                echo json_encode($sectorDirectory, JSON_PRETTY_PRINT);
            }
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}