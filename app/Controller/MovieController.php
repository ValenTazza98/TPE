<?php
require_once('./app/Model/MovieModel.php');
require_once('./app/View/MovieView.php');
require_once('./app/Model/ProjectionModel.php');
require_once('./app/helper/AuthFunction.php');

class MovieController {

    private $moviemodel;
    private $movieview;

    public function __construct() {
        $this->moviemodel = new MovieModel();
        $this->movieview = new MoviesView();
    }

    public function showMovies() {
        $movies = $this->moviemodel->getMovies();
        $this->movieview->insertMovies($movies);

    }

    public function showMovie($id) {
        $projectionmodel = new ProjectionsModel();
        $projections = $projectionmodel->getPorjectionsByMovieID($id);

        $days = [1=>"Lunes", 2=>"Martes", 3=>"Miercoles", 4=>"Jueves", 5=>"Viernes", 6=>"Sabado", 7=>"Domingo"];

        foreach ($projections as $index => $projection) {
            $projections[$index]['weekday'] = $days[$projection['day']];
        }


        $movie = $this->moviemodel->getMovieById($id);
        $this->movieview->insertMovieInDataSheet($movie, $projections);
    }


    //admin exclusive

    public function createMovie() {
        if (checkLoggedIn() === true) {
            if (isset($_POST['title']) === true) {
                $title = $_POST['title'];
                $description = $_POST['description'];
                $img = $_POST['imageurl'];
                $genre = $_POST['genre'];
                $duration = $_POST['duration'];
                
                $this->moviemodel->insertMovie($title, $description, $img, $genre, $duration);
                header("Location: " . "route.php");
            } else {
                $this->movieview->insertCreateMovie();
            }
        } else {
            header("Location: " . "route.php");
        }
    }

    public function editMovie($id) {
        if (checkLoggedIn() === true) {
            $data = $this->moviemodel->getMovieById($id);
            if (isset($_POST['title']) === true) {
                $title = $_POST['title'];
                $description = $_POST['description'];
                $img = $_POST['imageurl'];
                $genre = $_POST['genre'];
                $duration = $_POST['duration'];
                
                $this->moviemodel->editMovie($data->id, $title, $description, $img, $genre, $duration);
                header("Location: " . "route.php?/action=datasheet&movieid=$id");
            } else {
                $this->movieview->insertEditMovie($data);
            }
        } else {
            header("Location: " . "route.php?/action=datasheet&movieid=$id");
        }
    }

    public function deleteMovie($id) {
        if (checkLoggedIn() === true) {
            $projectionmodel = new ProjectionsModel();
            $projectionmodel->deleteProjectionByMovieID($id);
            $this->moviemodel->deleteMovie($id);
        } 
        header("Location: " . "route.php?/action=datasheet&movieid=$id");
    }
}