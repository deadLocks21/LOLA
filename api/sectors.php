<?php
require_once "./php/database/ToolsDAO.php";
require_once "./php/database/SectorDAO.php";
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
            $dao = new SectorDAO();
            header('Content-Type: application/json');
            if ($_GET['who'] == "61646d696e")
                echo json_encode($dao->getAll(), JSON_PRETTY_PRINT);
            else
                echo json_encode($dao->getFromAnAdmin($_GET['who']), JSON_PRETTY_PRINT);
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}