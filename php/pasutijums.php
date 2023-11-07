<?php
// Pārbaudīt, vai formas dati ir iesniegti
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Iegūt formas ievades datus
    $id = $_POST["id"];
    $pasutijuma_id = $_POST["pasutijuma_id"];
    $lietotaja_id = $_POST["lietotaja_id"];
    $produkta_id = $_POST["produkta_id"];
    $datums = $_POST["datums"];
    $statuss = $_POST["statuss"];
    $piegades_adrese = $_POST["piegades_adrese"];
    $cena = $_POST["cena"];
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
