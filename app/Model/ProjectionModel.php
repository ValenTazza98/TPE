<?php 

class ProjectionsModel {
    private $db;

    public function __construct() {
        $this->db = new PDO(DB_URL, DB_USER, DB_PASS);
    }

    public function getProjections() {
        $query = $this->db->prepare("SELECT Projection.id, Projection.day, Projection.time, Movie.title, Movie.id AS movieid FROM Projection JOIN Movie ON Projection.id_movie = Movie.id");
        $query->execute();

        $projections = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        
        return $projections;

    }

    function getProjectionById($id) {
        $query = $this->db->prepare("SELECT * FROM Projection WHERE id = ?");
        $query->execute([$id]);
        $projection = $query->fetch(PDO::FETCH_OBJ); // devuelve un solo objeto
        return $projection;
    } 

    function getPorjectionsByMovieID($id_movie) {
        $query = $this->db->prepare("SELECT * FROM Projection WHERE id_movie = ?");
        $query->execute([$id_movie]);
        $projections = $query->fetchAll(PDO::FETCH_ASSOC); // devuelve un arreglo
        return $projections;

    }


     

    //admin exclusive
    
    function insertProjection($day, $time, $id_movie) {
        $query = $this->db->prepare("INSERT INTO Projection (`day`, `time`, id_movie) VALUES (?, ?, ?)");
        $query->execute([$day, $time, $id_movie]);

        return $this->db->lastInsertId();
    }

    function editProjection($id, $day, $time, $id_movie){
        $query = $this->db->prepare("UPDATE Projection SET `day` = ?, `time` = ?, id_movie = ? WHERE id = ?");
        $result = $query->execute([$day, $time, $id_movie, $id]);
        
        return $result !== false;
    }

    function deleteProjection($id) {
        $query = $this->db->prepare('DELETE FROM Projection WHERE id = ?');
        $result = $query->execute([$id]);

        return $result !== false;
    }

    function deleteProjectionByMovieID($id_movie) {
        $query = $this->db->prepare('DELETE FROM Projection WHERE id_movie = ?');
        $result = $query->execute([$id_movie]);

        return $result !== false;
    }
}