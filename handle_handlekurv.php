<?php
session_start();
include("db.php");

// Hente eksisterende handlekurv eller opprette en tom
if (isset($_SESSION["handlekurv"])) {
    $kurv = $_SESSION["handlekurv"];
} else {
    // Ingen handlekurv så lager en tom en
    $kurv = array();
}

// Sjekker hvilken "action" som skal gjøres på handlekurven
if (isset($_POST["action"])) {
    $action = $_POST["action"];
    if ($action == "slett") {
        // Slette hele handlekurven
        $kurv = array();
    } else {
        // Fjerne et produkt fra handlekurven
        $posisjon = intval($action);
        array_splice($kurv, $posisjon, 1);
    }
} else {
    // legger til et nytt produkt i handlekurven
    $produkt_id = $_POST['produkt'];
    $kurv[] = $produkt_id;
}

// Lagrer handlekurven på session
$_SESSION["handlekurv"] = $kurv;

$tilkobling->close();
header("Location: handlekurv.php");
?>