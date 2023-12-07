<?php
include("db.php");
// echo password_hash('passord123', PASSWORD_DEFAULT);

$email = $_POST['email'];
$passord = $_POST['passord'];

$sporring = "SELECT * FROM kunde WHERE email='$email'";
$result = $tilkobling->query($sporring);

if ($result->num_rows == 1) {
    $row = mysqli_fetch_assoc($result);
    $hash_password = $row['passord'];
    if (password_verify($passord, $hash_password)) {
        echo 'Innlogging vellykket!';
    } else {
        echo 'Feil passord';
    }
    // Legge til kode for å lagre innloggingen
} else {
    echo 'Ikke eksisternde bruker';
}

$tilkobling->close();
?>