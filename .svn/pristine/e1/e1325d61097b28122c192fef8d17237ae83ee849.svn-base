<?php
session_start();
require_once "logic/User.php";
require_once "logic/Software.php";
require_once "logic/Course.php";
require_once "logic/CourseDirectory.php";
require_once "database/ToolsDAO.php";
require_once "database/SoftwareDAO.php";
require_once "database/CourseDirectoryDAO.php";
require_once "database/UserDao.php";

function connected() {
    if($_SESSION["connected"] == null || !isset($_SESSION["connected"]))
        header("Location: /IHM/login.php");
}

function connection($user) {
    $_SESSION["connected"] = $user;
    header("Location: /IHM");
}

function logout() {
    $_SESSION["connected"] = null;
}

function getConnectedLogin() : array
{
    return $_SESSION["connected"];
}