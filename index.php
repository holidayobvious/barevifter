<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Bare Vifter</title>
</head>

<body>
    <div class="menu">
        <!-- class="active" gjør slik at man kan tydligere se hvilken siden man er på i menyen-->
        <a class="active" href="index.php">Hjem</a>
        <a href="produkter_sma.php">Små vifter</a>
        <a href="produkter_store.php">Store vifter</a>
        <a href="login.php">Logg inn</a>
        <a href="handlekurv.php">Handlekurv</a>
        <img src="logo/barevifter.svg" alt="bare vifte logo" width="46px">
    </div>
    <h1>Velkommen til Bare Vifter</h1>

    <section>
        <h2> Vår bestselger </h2>
        <form action="handle_handlekurv.php" method="post">
            <?php
            include("db.php");
            include("funksjoner.php");
            $produkt_id = random_int(1,30);

            // Søker kun en vifte
            $sporring = "SELECT * FROM produkt WHERE id=$produkt_id";
            $result = $tilkobling->query($sporring);

            while ($row = mysqli_fetch_array($result)) {
                vis_produkt($row);
            }

            $tilkobling->close();
            ?>
        </form>
    </section>
</body>

</html>