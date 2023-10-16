<?php

class MessageModel {
    private $db;

    public function __construct($db) {
        $this->db = $db;
    }

    public function getAllMessages() {
        try {
            $query = "SELECT * FROM message";
            $stmt = $this->db->prepare($query);
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error fetching messages: " . $e->getMessage());
        }
    }

    public function getMessageById($id) {
        try {
            $query = "SELECT * FROM message WHERE id = :id";
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            return $stmt->fetch(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            die("Error fetching message: " . $e->getMessage());
        }
    }
}
