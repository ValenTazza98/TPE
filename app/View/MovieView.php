<?php

require_once('./smarty-4.2.1/libs/Smarty.class.php');


class MoviesView {

    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // inicializo Smarty
        $this->smarty->assign('isLogged', $_SESSION['IS_LOGGED']);
    }


    public function insertMovies ($movies) {
        //toma cada elemento de movie lo asigna a una variable
        $this->smarty->assign('movies', $movies);
        $this->smarty->display('marquee.tpl');
    }

    public function insertMovieInDataSheet($movie, $projections) {
        $this->smarty->assign('movie', $movie);
        $this->smarty->assign('projections', $projections);
        $this->smarty->display('./templates/datasheet.tpl');
    }

    public function insertCreateMovie() {
        $this->smarty->display('createmovie.tpl');
    }

    public function insertEditMovie($movie) {
        $this->smarty->assign('movie', $movie);
        $this->smarty->display('editmovie.tpl');
    }

}