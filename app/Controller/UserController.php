<?php 
require_once('./app/Model/UserModel.php');
require_once('./app/View/UserView.php');

class UserController {

    private $usermodel;
    private $userview;

    public function __construct() {
        $this->usermodel = new UserModel();
        $this->userview = new UserView();
    }

    public function showFormLogin() {
        $this->userview->showFormLogin();
    }

    public function validateUser() {
        $username = $_POST['user'];
        $password = $_POST['password'];
        $user = $this->usermodel->getUserData($username);

        if ($user && password_verify($password, $user->password)) {
            $_SESSION['USER_ID'] = $user->id;
            $_SESSION['IS_LOGGED'] = true;
            header("Location: " . "route.php");
        } 
        else {
           $this->userview->showFormLogin("El usuario o la contraseña no existe.");
        } 
    }

    public function logout() {
        $_SESSION['USER_ID'] = null;
        $_SESSION['IS_LOGGED'] = false;
        session_destroy();
        header("Location: " . "route.php");
    }

}