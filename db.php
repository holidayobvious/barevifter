<?php
$server = 'localhost';
$username = 'root';
$password = 'root';
$database = 'vifter';

$tilkobling = new mysqli($server, $username, $password, $database);
// Får inn spesialtegn/norske tegn
$tilkobling -> set_charset('UTF8');

if ($tilkobling->connect_error) {
    die('Tilkoblingsfeil'. $tilkobling->connect_error);
}
?>