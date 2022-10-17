<?php

require_once('./app/Model/ProjectionModel.php');
require_once('./app/View/ProjectionView.php');
require_once('./app/Model/MovieModel.php');
require_once('./app/helper/AuthFunction.php');

class ProjectionController
{
    private $projectionmodel;
    private $projectionview;

    public function __construct()
    {
        $this->projectionmodel = new ProjectionsModel();
        $this->projectionview = new ProjectionView();
    }

    public function showProjections()
    {
        $projections = $this->projectionmodel->getProjections();

        $presentation = [
            16 => [
                1 => null,
                2 => null,
                3 => null,
                4 => null,
                5 => null,
                6 => null,
                7 => null
            ],
            18 => [
                1 => null,
                2 => null,
                3 => null,
                4 => null,
                5 => null,
                6 => null,
                7 => null
            ],
            20 => [
                1 => null,
                2 => null,
                3 => null,
                4 => null,
                5 => null,
                6 => null,
                7 => null
            ],
            22 => [
                1 => null,
                2 => null,
                3 => null,
                4 => null,
                5 => null,
                6 => null,
                7 => null
            ]
        ];

        foreach ($projections as $projection) {
            $presentation[$projection->time][$projection->day] = $projection;
        }

        $this->projectionview->insertProjectionsInTable($presentation);
    }

    //admin exclusive

    public function insertProjection(){
        if (checkLoggedIn() === true) {
            $moviemodel = new MovieModel();
            $optionmovies = $moviemodel->getMovies();
            
            if (isset($_POST['day']) === true) {
                $day = $_POST['day'];
                $time = $_POST['time'];
                $id_movie = $_POST['id_movie'];
                
                $this->projectionmodel->insertProjection($day, $time, $id_movie);
                header("Location: " . "route.php?action=projections");
            } else {
                $this->projectionview->insertCreateProjection($optionmovies);
            }
        } else {header("Location: " . "route.php?action=projections");}
    }

    public function editProjection($id){
        if (checkLoggedIn() === true) {
            $moviemodel = new MovieModel();
            $optionmovies = $moviemodel->getMovies();
            
            $data = $this->projectionmodel->getProjectionById($id);
            
            if (isset($_POST['day']) === true) {
                $day = $_POST['day'];
                $time = $_POST['time'];
                $id_movie = $_POST['id_movie'];
                
                $this->projectionmodel->editProjection($id, $day, $time, $id_movie);
                header("Location: " . "route.php?action=projections");
            } else {
                $this->projectionview->insertEditProjection($data ,$optionmovies);
            }
        } else {
            header("Location: " . "route.php?action=projections");
        }
    }

    public function deleteProjection($id) {
        if (checkLoggedIn() === true) {
            $this->projectionmodel->deleteProjection($id);
        }
        header("Location: " . "route.php?action=projections");
    }
}
