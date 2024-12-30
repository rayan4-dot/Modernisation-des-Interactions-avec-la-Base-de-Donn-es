 
<?php

class Database {
    private $host = "localhost";
    private $user = "root";
    private $password = "";
    private $database = "oop";

    public function con() {
        try {
            $connection = new PDO("mysql:host=$this->host;dbname=$this->database", $this->user, $this->password);

            $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $connection;
        } catch (PDOException $e) {
            
            echo "Connection failed: " . $e->getMessage();
            return null;
        }
    }
}