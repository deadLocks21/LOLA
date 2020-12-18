<?php
require_once "../php/functions.php";
$request_method = $_SERVER["REQUEST_METHOD"];

switch($request_method)
{
    case 'GET':
        $login = $_GET['login'];
        if(!empty($login)){
            $courseDirectory = CourseDirectoryDAO::get($login);
            header('Content-Type: application/json');
            echo json_encode($courseDirectory, JSON_PRETTY_PRINT);
        }
        break;
    default:
        header("HTTP/1.0 405 Method Not Allowed");
        break;
}