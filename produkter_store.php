<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Liggende vifter</title>
</head>

<body>
    <div class="menu">
        <a href="index.php">Hjem</a>
        <a href="produkter_sma.php">Små vifter</a>
        <a class="active" href="produkter_store.php">Store vifter</a>
        <a href="login.php">Logg inn</a>
        <a href="handlekurv.php">Handlekurv</a>
        <img src="logo/barevifter.svg" alt="bare vifte logo" width="46px">
    </div>
    <h1>Store vifter</h1>
    <section>
        <form action="handle_handlekurv.php" method="post">
            <?php
            include("db.php");
            include("funksjoner.php");

            // Søker alle vifter > 40 cm
            $sporring = "SELECT * FROM produkt WHERE storrelse > '40 cm'";
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