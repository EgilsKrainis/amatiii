<?php
class Database {
    private static $instance = null;
    private $pdo;

    private function __construct() {
        $host = 'localhost';
        $dbname = 'egilsk';
        $username = 'root';
        $password = 'DianA1993!';

        try {
            $this->pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance() {
        if (self::$instance === null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    public function getConnection() {
        return $this->pdo;
    }
}

// Izmantojot klasi, lai iegūtu datubāzes savienojumu
// $db = Database::getInstance();
// $connection = $db->getConnection();

// Tagad jūs varat izmantot $connection, lai veiktu datubāzes vaicājumus
