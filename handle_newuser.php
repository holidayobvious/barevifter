<?php
include("db.php");
// echo password_hash('passord123', PASSWORD_DEFAULT);

$passord = $_POST['passord'];
$passord2 = $_POST['passord2'];

if ($passord == $passord2){
    $email = $_POST['email'];
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $postkode = $_POST['postkode'];
    $adresse = $_POST['adresse'];
    $poststed = $_POST['poststed'];
    $hash_password = password_hash($passord, PASSWORD_DEFAULT);
    $sporring = "INSERT INTO kunde (email, first_name, last_name, postkode, adresse, poststed, passord)";
    $sporring = $sporring . "VALUES ('$email', '$first_name', '$last_name', '$postkode', '$adresse', '$poststed', '$hash_password')";
    $result = $tilkobling->query($sporring);
    // sjekke $result om det skjedde noe feil
    echo $sporring;
} else {
    echo 'Pass på at passordene er skrevet likt!';
}

// if ($result->num_rows == 1) {
//     $row = mysqli_fetch_assoc($result);
//     $hash_password = $row['passord'];
//     if (password_verify($passord, $hash_password)) {
//         echo 'Innlogging vellykket!';
//     } else {
//         echo 'Feil passord';
//     }
//     // Legge til kode for å lagre innloggingen
// }

$tilkobling->close();
?>