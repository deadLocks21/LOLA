<?php
$userInfos = getConnectedLogin();
$admin = $userInfos['userType'];
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- TITRE ET ICONE -->
    <title>Accueil</title>
    <link rel="icon" type="image/png" sizes="32x32" href="src/favicon-32x32.png">

    <!-- POLICE -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans&display=swap" rel="stylesheet">

    <!-- FONT AWESOME (ICONS) -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <!-- CSS -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/scrollbar.css">
    <link rel="stylesheet" href="css/night.css">
    <link rel="stylesheet" href="css/form-edit-software.css">
</head>

<body class="flex">
<p style="display: none;" id="getLogin"><?php echo getConnectedLogin()['login'] ?></p>
<p style="display: none;" id="getUserType"><?php echo getConnectedLogin()['userType'] ?></p>
    
<header class="flex align-center">
    <img src="src/logo.png" alt="logo" id="logoIUT">

    <span id="LOLA">Liste Omnisciente des Logiciels et Applications</span>

    <div id="logoutButton">
        <a href="login.php"><i class="fas fa-sign-out-alt"></i></a>
    </div>
</header>

<div class="content-container grid" id="contentSoft">
    <div class="sectors-container" id=sectorContainer>

    </div>
</div>


<script src="js/AddSector/callback.js"></script>
<script src="js/AddSector/create.js"></script>
<script src="js/AddSector/data.js"></script>
<script src="js/AddSector/display.js"></script>
<script src="js/AddSector/listener.js"></script>

<script src="js/Sector/callback.js"></script>
<script src="js/Sector/create.js"></script>
<script src="js/Sector/data.js"></script>
<script src="js/Sector/display.js"></script>
<script src="js/Sector/listener.js"></script>

<script src="js/Course/callback.js"></script>
<script src="js/Course/create.js"></script>
<script src="js/Course/data.js"></script>
<script src="js/Course/display.js"></script>
<script src="js/Course/listener.js"></script>

<script src="js/Software/callback.js"></script>
<script src="js/Software/create.js"></script>
<script src="js/Software/data.js"></script>
<script src="js/Software/display.js"></script>
<script src="js/Software/listener.js"></script>

<script src="js/main.js" defer></script>

</body>
</html>