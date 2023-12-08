<?php
session_start();
include("db.php");
include("funksjoner.php");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Stående vifter</title>
</head>

<body>
    <div class="menu">
        <a href="index.php">Hjem</a>
        <a href="produkter_sma.php">Små vifter</a>
        <a href="produkter_store.php">Store vifter</a>
        <a href="login.php">Logg inn</a>
        <a class="active" href="handlekurv.php">Handlekurv</a>
        <img src="logo/barevifter.svg" alt="bare vifte logo" width="46px">
    </div>
    <h1>Handlekurv</h1>
    <form action="handle_handlekurv.php" method="post">
        <?php
        $antall_i_kurv = 0;
        if (isset($_SESSION["handlekurv"])) {
            $kurv = $_SESSION["handlekurv"];
            $posisjon = 0;
            $antall_i_kurv = count($kurv);
            if ($antall_i_kurv > 0){
                foreach ($kurv as $produkt_id) {
                    $sporring = "SELECT * FROM produkt WHERE id=$produkt_id";
                    $result = $tilkobling->query($sporring);
                    while ($row = mysqli_fetch_array($result)) {
                        vis_produkt_i_handlekurv($row, $posisjon++);
                    }
                }
                $tilkobling->close();
            } else {
                echo "Handlekurven inneholder ingen produkter!";
            }
        } else {
            echo "Handlekurven din eksisterer ikke!";
        }
        ?>
    </form>
    <form action="handle_handlekurv.php" method="post">
        <button type="submit" name="action" value="slett"> Tøm handlekurv </button>
    </form>

    <br>

    <?php
    if ($antall_i_kurv > 0){
        echo '<form action="#.php" method="post">
            <button type="submit" name="action" value="bestill"> Bestill </button>
        </form>';
    }
    ?>
</body>

</html>