<?php
require_once "../php/functions.php";
sectorAPI();

/**
 * Permet de créer, ajouter, modifier et supprimer une formation.
 * 
 * @api
 * @package API
 */
function sectorAPI() {
    $request_method = $_SERVER["REQUEST_METHOD"];
    
    switch($request_method)
    {
        case 'GET':
            $id = $_GET["id"];
            if(!empty($id)){
                $sector = SectorDAO::get($id);
                header('Content-Type: application/json');
                echo json_encode($sector, JSON_PRETTY_PRINT);
            }
            break;
        case 'POST':
            $code = $_POST['code'];
            $label1 = $_POST['label1'];
            $label2 = $_POST['label2'];

            if(!empty($code) && !empty($label1) && !empty($label2))
                SectorDAO::create(new Sector(0, $code, $label1, $label2));
            break;
        case 'PUT':
            $_PUT = array();
            $_PUT = json_decode(file_get_contents('php://input'), true);

            $sector = new Sector(intval($_GET['id']), "", "", "");
            $sector->hydrate($_PUT);  // TODO Verifier les entrées

            SectorDAO::update($sector);
            
            header('Content-Type: application/json');
            echo json_encode(array('status' => 1, 'status_message' =>'Formation mise à jour avec succès.'));
            break;
        case 'DELETE':
            $id = $_GET["id"];
            if(!empty($id)){
                SectorDAO::delete($id);
                header('Content-Type: application/json');
                echo json_encode(array('status' => 1, 'status_message' =>'Formation supprimé avec succès.'), JSON_PRETTY_PRINT);
            }
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}