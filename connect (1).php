<?php

$host = 'localhost';
$dbname = 'amatiii';
$username = 'egilsk';
$password = 'DianA1993!';

$conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

function create_unique_id(){
    $charecters =
    '';
    $charecters_length = strlen($charecters);
    $random_string = '';
    for($i = 0; $i < 20; $i++){
        $random_string .= $characters[mt_rand(0, $characters_length - 1)];
    }
    return $random_string;
}

if(isset($_COKIE['lietotaja_id'])){
    $lietotaja_id = $_COOKIE['lietotaja_id'];
}else{
    setcookie('lietotaja_id', create_unique_id(), time() + 60*60*24*30);
}

?>