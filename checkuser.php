<?php
$hesh = '$2y$10$McI77TSIpQ0WIG3RDVZfLuY1pWsp47xZSNJbTqRl0cwIEd49k9odu';
var_dump($_POST);
if (password_verify(htmlspecialchars($_POST["password"]),$hesh)) {
    echo"parole pareiza";
    setcookie("sesija", "aktivu", time()+300);
}

else{
    echo"parole nepareiza";
}

