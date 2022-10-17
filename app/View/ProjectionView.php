<?php

require_once('./smarty-4.2.1/libs/Smarty.class.php');

class ProjectionView {

    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // inicializo Smarty

        $this->smarty->assign('isLogged', $_SESSION['IS_LOGGED']);
    }

    public function insertProjectionsInTable($projections){
        $this->smarty->assign('projections', $projections);

        $this->smarty->display('projectionscalendar.tpl');
    }

    public function insertCreateProjection($optionmovies) {
        $this->smarty->assign('optionmovies', $optionmovies);
        $this->smarty->display('createprojection.tpl');
    }

    public function insertEditProjection($projection, $optionmovies) {
        $this->smarty->assign('projection', $projection);
        $this->smarty->assign('optionmovies', $optionmovies);
        $this->smarty->display('editprojection.tpl');
    }
}