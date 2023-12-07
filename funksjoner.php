<?php
// Lettere å oppdatere og vedlikeholde koden
// Denne returnerer HTML-koden som skal til for å vise et produkt
// For å bruke den må man sende inn en rad fra produkt-tabellen
function vis_produkt($row)
{
    $beskrivelse = $row["beskrivelse"];
    if ($beskrivelse == null) {
        // Hvis det ikke er noe beskrivelse i databasen
        // Starer vi med tom tekst
        $beskrivelse = "";
    } else {
        // Henter beskrivelsen fra databasen og lager stor bokstav
        $beskrivelse = ucfirst($beskrivelse) . '.<br>';
    }
    $beskrivelse = $beskrivelse . 'Viften er ' . $row["storrelse"] . ' stor med en hastighet inntil ' . $row["hastighet"] . '.';
    // Lager stor bokstav på produktnavnene
    $navn = ucfirst($row['navn']);
    $id = $row['id'];
    $produkt_id = $row['id'];
    echo '<div class="product">
    <h3>#' . $id . ' ' . $navn . '</h3>
    <p>' . $beskrivelse . '</p>
    <p>Pris: ' . $row["pris"] . ' kr</p> 
    <button type="submit" name="produkt" value="' . $produkt_id . '"> Legg til i handlekurv</button>
    </div>';
}

function vis_produkt_i_handlekurv($row, $posisjon)
{
    $beskrivelse = $row["beskrivelse"];
    if ($beskrivelse == null) {
        // Hvis det ikke er noe beskrivelse i databasen
        // Starer vi med tom tekst
        $beskrivelse = "";
    } else {
        // Henter beskrivelsen fra databasen og lager stor bokstav
        $beskrivelse = ucfirst($beskrivelse) . '.<br>';
    }
    $beskrivelse = $beskrivelse . 'Viften er ' . $row["storrelse"] . ' stor med en hastighet inntil ' . $row["hastighet"] . '.';
    // Lager stor bokstav på produktnavnene
    $navn = ucfirst($row['navn']);
    $id = $row['id'];
    echo '<div class="product">
    <h3>#' . $id . ' ' . $navn . '</h3>
    <p>Pris: ' . $row["pris"] . ' kr</p> 
    <button type="submit" name="action" value="' . $posisjon . '"> Fjern produkt</button>
    </div>';
}
?>