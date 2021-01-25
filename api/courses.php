<?php
require_once "../php/functions.php";
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
            $sector = $_GET['sector'];
            $login = $_GET['login'];
            if(!empty($sector) && !empty($login)){
                $user = UserDao::getUser($login);

                switch($user->getUserType())
                {
                    case 1:
                        $courseDirectory = CourseDirectoryDao::get($login);
                    break;
                    case 2:
                        $courseDirectory = CourseDirectoryDao::getCoursesBySectorProfessor($sector);
                    break;
                    case 3:
                        $courseDirectory = CourseDirectoryDao::getCoursesBySectorAdmin($sector);
                    break;
                    default:
                        $courseDirectory = new CourseDirectory();
                }
                
                header('Content-Type: application/json');
                echo json_encode($courseDirectory, JSON_PRETTY_PRINT);
            }
            break;
        default:
            header("HTTP/1.0 405 Method Not Allowed");
            break;
    }
}