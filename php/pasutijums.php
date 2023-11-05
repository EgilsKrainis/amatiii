<?php
// Pārbaudīt, vai formas dati ir iesniegti
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Iegūt formas ievades datus
    $question1 = $_POST["question1"];
    $question2 = $_POST["question2"];
    $question3 = $_POST["question3"];
    $question4 = $_POST["question4"];
    $question5 = $_POST["question5"];
    $question6 = $_POST["question6"];
    $question7 = $_POST["question7"];
    $question8 = $_POST["question8"];
    $agreement = $_POST["agreement"];

    // Izveidot savienojumu ar datu bāzi
    $serveris = 'localhost'; // vai jūsu datu bāzes servera IP adrese
    $db_vards = 'egils'; // jūsu datu bāzes nosaukums
    $lietotajvards = 'egils';
    $parole = 'amatnieks23';

    try {
        $savienojums = new PDO("mysql:host=$serveris;port=3306;dbname=$db_vards", $lietotajvards, $parole);
        // Iestatīt PDO atribūtus, piemēram, kļūdu režīmu
        $savienojums->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "Savienojuma kļūda: " . $e->getMessage();
        exit;
    }

    // Izveidot SQL vaicājumu, lai ievietotu datus datu bāzē
    $sql = "INSERT INTO pasutijums (id, pasutijuma_id, lietotaja_id, produkta_id, datums, statuss, piegades_adrese, cena, agreement) 
            VALUES ('$id', '$pasutijuma_id', '$lietotaja_id', '$produkta_id', '$datums', '$statuss', '$piegades_adrese', '$cena', '$agreement')";

    // Izpildīt SQL vaicājumu
    if ($savienojums->query($sql)) {
        echo "Dati ir veiksmīgi ievietoti datu bāzē.";
    } else {
        echo "Kļūda: " . $savienojums->errorInfo()[2];
    }

    // Aizvērt datu bāzes savienojumu
    $savienojums = null;
}
?>
