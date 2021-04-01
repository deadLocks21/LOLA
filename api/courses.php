<?php
require_once "./php/database/ToolsDAO.php";
require_once "./php/database/CourseDAO.php";
coursesAPI();

/**
 * Permet de récupérer la liste des modules d'un utilisateur..
 * 
 * @api
 * @package API
 */
function coursesAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];

    switch($request_method)
    {
        case 'GET':
            $dao = new CourseDAO();
            header('Content-Type: application/json');
            echo json_encode($dao->getAll($_GET['sector']), JSON_PRETTY_PRINT);
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}