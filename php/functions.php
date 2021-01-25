<?php
session_start();
require_once "logic/User.php";
require_once "logic/Software.php";
require_once "logic/Course.php";
require_once "logic/Sector.php";
require_once "logic/CourseDirectory.php";
require_once "logic/SectorDirectory.php";
require_once "database/ToolsDAO.php";
require_once "database/SoftwareDAO.php";
require_once "database/SectorDAO.php";
require_once "database/CourseDAO.php";
require_once "database/CourseDirectoryDAO.php";
require_once "database/SectorDirectoryDAO.php";
require_once "database/UserDao.php";

/**
 * Permet de rediriger un visiteur vers la page de login s'il n'est pas connecté.
 * 
 * @package functions
 */
function connected() {
    if($_SESSION["connected"] == null || !isset($_SESSION["connected"]))
        header("Location: login.php");
}

/**
 * Permet de connecter un utilisateur et de le rediriger vers la main page.
 * 
 * @package functions
 * @param User $user
 */
function connection($user) {
    $_SESSION["connected"] = $user;
    header("Location: index.php");
}

/**
 * Unset la variable de session de la connexion.
 * 
 * @package functions
 */
function logout() {
    $_SESSION["connected"] = null;
}

/**
 * Retourne les informations sur l'utilisateur connecté.
 * 
 * @package functions
 * @return array
 */
function getConnectedLogin() : array
{
    return $_SESSION["connected"];
}