<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User create</title>
</head>
<body>
<?php
echo ' your name is ' . htmlspecialchars($_POST["user"]) . '<br>';
echo ' your email is ' . htmlspecialchars($_POST["email"]) . '<br>';
echo ' your password is ' . htmlspecialchars($_POST["password"]) . '<br>';
echo ' your password hash is ' . password_hash(htmlspecialchars($_POST["password"]),PASSWORD_DEFAULT) . '<br>';

if(isset($_POST["savedata"])) {
    echo "saving data";
    $name = $_POST["user"];
    $email = $_POST["email"];
    $password_hash = password_hash(htmlspecialchars($_POST["password"]),PASSWORD_DEFAULT);

    $serveris = 'localhost'; // vai jūsu datu bāzes servera IP adrese
    $db_vards = 'login_db'; // jūsu datu bāzes nosaukums
    $lietotajvards = 'egils';
    $parole = 'DianA1993!';

    try {
        $savienojums = new PDO("mysql:host=$serveris;port=3306;dbname=$db_vards", $lietotajvards, $parole);
        // iestatīt PDO atribūtus, piemēram, kļūdu režīmu
        $savienojums->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        // echo "Savienojums ar datu bāzi ir veiksmīgi izveidots!";
    } catch (PDOException $e) {
        echo "Savienojuma kļūda: " . $e->getMessage();
        exit;
    }

    $sth = $savienojums->query("INSERT INTO user (name, email, password_hash) VALUES ('$name', 'epasts', '$password_hash')");
}
?>
</body>
</html>
