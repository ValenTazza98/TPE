<?php
class UserModel {

    private $db;

    public function __construct() {
        $this->db = new PDO(DB_URL, DB_USER, DB_PASS);
    }

    public function getUserData($name) {
        $query = $this->db->prepare("SELECT * FROM User WHERE name = ?");
        $query->execute([$name]);

        $user = $query->fetch(PDO::FETCH_OBJ);
        
        return $user;
    }
}