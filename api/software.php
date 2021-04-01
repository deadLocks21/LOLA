<?php
require_once "./php/database/ToolsDAO.php";
require_once "./php/database/SoftwareDAO.php";
softwareAPI();

/**
 * Permet de créer, ajouter, modifier et supprimer un logiciel.
 * 
 * @api
 * @package API
 */
function softwareAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];

    switch($request_method)
    {
        case 'GET':
            $dao = new SoftwareDAO();
            header('Content-Type: application/json');
            echo json_encode($dao->get($_GET['id']), JSON_PRETTY_PRINT);
            break;
        /* case 'POST':
            $name = $_POST['name'];
            $version = $_POST['version'];
            $urlSetup = $_POST['urlSetup'];
            $urlTuto = $_POST['urlTuto'];
            $comment = $_POST['comment'];
            $courseId = $_POST['courseId'];

            $software = new Software(0, $name, $version, $urlSetup, $urlTuto, $comment);
            $course = new Course($courseId, '', '');

            SoftwareDAO::create($software, $course);
        break;
        case 'PUT':
            $_PUT = array(); //tableau qui va contenir les données reçues
            $_PUT = json_decode(file_get_contents('php://input'), true);

            $software = new Software(intval($_GET['id']), "", "", "", "", "");
            $software->hydrate($_PUT);  // TODO Verifier les entrées

            $softBase = SoftwareDAO::get(intval($_GET['id']));
            $software->setUrlTuto($softBase->getUrlTuto());

            SoftwareDAO::update($software);
            
            header('Content-Type: application/json');
            echo json_encode(array('status' => 1, 'status_message' =>'Logiciel mis a jour avec succes.'));
        break;
        case 'DELETE':
            $id = $_GET["id"];
            if(!empty($id)){
                SoftwareDAO::delete($id);
                header('Content-Type: application/json');
                echo json_encode(array('status' => 1, 'status_message' =>'Formation supprimé avec succès.'), JSON_PRETTY_PRINT);
            }
        break; */
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}