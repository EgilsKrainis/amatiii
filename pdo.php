<?php
$serveris = 'localhost'; // vai jūsu datu bāzes servera IP adrese
$db_vards = 'egils'; // jūsu datu bāzes nosaukums
$lietotajvards = 'egils';
$parole = 'amatnieks23';

try {
    $savienojums = new PDO("mysql:host=$serveris;port=3307;dbname=$db_vards", $lietotajvards, $parole);
    // iestatīt PDO atribūtus, piemēram, kļūdu režīmu
    $savienojums->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Savienojums ar datu bāzi ir veiksmīgi izveidots!";
} catch (PDOException $e) {
    echo "Savienojuma kļūda: " . $e->getMessage();
    exit;
}