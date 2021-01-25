<?php
require_once "php/functions.php";

logout();
if(!empty($_POST) && isset($_POST['idIUT']) && isset($_POST['pwIUT'])) {
    $good = UserDao::existsNGood($_POST['idIUT'], $_POST['pwIUT']);
    $user = UserDao::getUser($_POST['idIUT']);

    if($good == 1)
        connection($user->save());
} else {
    $good = 1;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>

    <link rel="stylesheet" href="css/login.css">

    <!-- POLICE -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

    <!-- ICONE NAVIGATEUR -->
    <link rel="icon" type="image/png" sizes="32x32" href="src/favicon-32x32.png">
</head>
<body>
<div class="landing">
    <div class="welcome">
        <img src="src/dev.svg" alt="dev">
        <h1>Bienvenue sur <br> LOLA !</h1>
    </div>
    <form action="" method="post" class="log">
        <div class="log-input userInfo">
            <input type="text" name="idIUT" id="idIUT" placeholder="Identifiant IUT">
        </div>
        <div class="log-input userInfo">
            <input type="password" name="pwIUT" id="pwIUT" placeholder="Mot de passe IUT">
        </div>
        <?php if($good == 0) : ?>
        <div><?php echo "<p class='error'>Le couple login/mot de passe n'existe pas ...</p>" ?></div>
        <?php endif; ?>
        <div class="log-input">
            <input type="submit" value="Se connecter" id="log-submit">
        </div>
    </form>
</div>
</body>
</html>