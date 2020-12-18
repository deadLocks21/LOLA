<?php
require_once "../php/functions.php";
$request_method = $_SERVER["REQUEST_METHOD"];

switch($request_method)
{
    case 'GET':
        $id = $_GET["id"];
        if(!empty($id)){
            $software = SoftwareDAO::get($id);
            header('Content-Type: application/json');
            echo json_encode($software, JSON_PRETTY_PRINT);
        }
        break;
    case 'PUT':
        $_PUT = array(); //tableau qui va contenir les données reçues
        $_PUT = json_decode(file_get_contents('php://input'), true);

        $software = new Software(intval($_GET['id']), "", "", "", "", "");
        $software->hydrate($_PUT);  // TODO Verifier les entrées

        SoftwareDAO::update($software);
        
        header('Content-Type: application/json');
        echo json_encode(array('status' => 1, 'status_message' =>'Logiciel mis a jour avec succes.'));
    break;
    default:
        header("HTTP/1.0 405 Method Not Allowed");
        break;
}