<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $message = $_POST["message"];
    $phone = $_POST["phone"];
    $email = $_POST["email"];

    // Izveidojiet savienojumu ar datu bāzi
    $serveris = 'localhost'; // vai jūsu datu bāzes servera IP adrese
    $db_vards = 'egils'; // jūsu datu bāzes nosaukums
    $lietotajvards = 'egils';
    $parole = 'amatnieks23';

    try {
        $savienojums = new PDO("mysql:host=$serveris;port=3306;dbname=$db_vards", $lietotajvards, $parole);
        $savienojums->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Savienojuma kļūda: " . $e->getMessage();
        exit;
    }

    // Ievietojiet datus datu bāzē
    $sql = "INSERT INTO message (id, message, phone, email, timestamp) 
            VALUES (:id, :message, :phone, :email, NOW())";

    $stmt = $savienojums->prepare($sql);
    $stmt->bindParam(':message', $message);
    $stmt->bindParam(':phone', $phone);
    $stmt->bindParam(':email', $email);

    if ($stmt->execute()) {
        echo "Dati ir veiksmīgi ievietoti datu bāzē.";
    } else {
        echo "Kļūda: " . $stmt->errorInfo()[2];
    }

    $savienojums = null;
}
?>
