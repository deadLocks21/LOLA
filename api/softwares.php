<?php
require_once "./php/database/ToolsDAO.php";
require_once "./php/database/SoftwareDAO.php";
softwaresAPI();

/**
 * Permet de récupérer la liste de logiciels.
 * 
 * @api
 * @package API
 */
function softwaresAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];

    switch($request_method)
    {
        case 'GET':
            $dao = new SoftwareDAO();
            header('Content-Type: application/json');
            echo json_encode($dao->getAll($_GET['id']), JSON_PRETTY_PRINT);
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}