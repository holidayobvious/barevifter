<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Innlogging</title>
    <style>
        /* Passe på at stylen er der jeg vil ha den */
        form {
            background-color: lavenderblush;
            border-radius: 8px;
            box-shadow: grey;
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        h2 {
            color: grey;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid grey;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: palevioletred;
            color: black;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: lightcoral;
        }
    </style>
</head>

<body>
    <!-- Header meny -->
    <div class="menu">
        <a href="index.php">Hjem</a>
        <a href="produkter_sma.php">Små vifter</a>
        <a href="produkter_store.php">Store vifter</a>
        <a class="active" href="login.php">Logg inn</a>
        <a href="handlekurv.php">Handlekurv</a>
        <img src="logo/barevifter.svg" alt="bare vifte logo" width="46px">
    </div>
    <h1>Logg inn</h1>

    <div class="container">
            <!-- Inputfelt for innlogging -->
            <form action="handle_login.php" method="post">
                E-mail: <input type="email" name="email" required><br>
                Passord: <input type="password" name="passord" required><br>
                <input type="submit" value="Logg inn">
            </form>
    </div>
    <!-- Link til opprettbruker.php -->
    <h5>Ikke kunde? Opprett ny <a href="opprettbruker.php">her!</a></h5>
</body>

</html>