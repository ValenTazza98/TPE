<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

//CONEXION BASE DE DATOS
define('DB_URL', 'mysql:host=127.0.0.1;dbname=TPEDB;charset=utf8');
define('DB_USER', 'root');
define('DB_PASS', '');


require_once('./app/Controller/MovieController.php');
require_once('./app/Controller/ProjectionController.php');
require_once('./app/Controller/UserController.php');

// nos aseguramos de que siempre haya una sesion
session_start();
if (!isset($_SESSION['IS_LOGGED'])) {
    // valores por defecto
    $_SESSION['USER_ID'] = null;
    $_SESSION['IS_LOGGED'] = false;
}

$action = 'marquee'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

//Creo controladores 
$movieController = new MovieController();
$projectionController = new ProjectionController();
$userController = new UserController();

// tabla de ruteo
switch ($action) {
    case 'marquee':
        $movieController->showMovies();
        break;
    case 'datasheet':
        $movieController->showMovie($_GET['movieid']);
        break;
    case 'createmovie':
        $movieController->createMovie();
        break;
    case 'editmovie':
        $movieController->editMovie($_GET['movieid']);
        break;
    case 'deletemovie':
        $movieController->deleteMovie($_GET['movieid']);
        break;
    case 'login':
        $userController->showFormLogin();
        break;
    case 'validate':
        $userController->validateUser();
        break;
    case 'logout':
        $userController->logout();
        break;
    case 'projections':
        $projectionController->showProjections();
        break;
    case 'createprojection':
        $projectionController->insertProjection();
        break;
    case 'editprojection':
        $projectionController->editProjection($_GET['projectionid']);
        break;
    case 'deleteprojection':
        $projectionController->deleteProjection($_GET['projectionid']);
        break;
    default:
        echo('404 Page not found');
        break;
}

