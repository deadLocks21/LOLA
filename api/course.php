<?php
require_once "../php/functions.php";
courseAPI();

/**
 * Permet de créer, ajouter, modifier et supprimer une module.
 * 
 * @api
 * @package API
 */
function courseAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];

    switch($request_method)
    {
        case 'GET':
            $id = $_GET["id"];
            if(!empty($id)){
                $course = CourseDAO::get($id);
                header('Content-Type: application/json');
                echo json_encode($course, JSON_PRETTY_PRINT);
            }
            break;
        case 'POST':
            $code = $_POST['code'];
            $name = $_POST['name'];
            $user = UserDao::getUser($_POST['userName']);
            $idSector = $_POST['idSector'];

            if(!empty($code) && !empty($name))
                CourseDAO::create(new Course(0, $code, $name), new Sector($idSector, '', '', ''), $user);
            break;
        case 'PUT':
            $_PUT = array();
            $_PUT = json_decode(file_get_contents('php://input'), true);

            $course = new Course($_PUT['id'], $_PUT['code'], $_PUT['name']);
            $sector = new Sector($_PUT['idSector'], '', '', '');
            $user = UserDao::getUser($_PUT['userName']);

            CourseDAO::update($course, $sector, $user);
            
            header('Content-Type: application/json');
            echo json_encode(array('status' => 1, 'status_message' =>'Module mise à jour avec succès.'));
            break;
        case 'DELETE':
            $id = $_GET["id"];
            if(!empty($id)){
                CourseDAO::delete($id);
                header('Content-Type: application/json');
                echo json_encode(array('status' => 1, 'status_message' =>'Matière supprimé avec succès.'), JSON_PRETTY_PRINT);
            }
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}