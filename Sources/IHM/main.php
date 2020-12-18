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
    
<header class="flex align-center">
    <img src="src/logo.png" alt="logo" id="logoIUT">

    <!-- <div id="switchMode">
        <div class="switch flex" id="nightMode">
            <p id="night">Mode nuit</p>
            <i class="fas fa-moon"></i>
        </div>
        <div class="switch flex" id="dayMode">
            <p id="day">Mode jour</p>
            <i class="fas fa-sun"></i>
        </div>
    </div> -->

    <span id="LOLA">Liste Omnisciente des Logiciels et Applications</span>

	<!-- <?php if($admin == 2) : ?>
		<div class="button" id="addSoftware">
			Demander ajout de logiciel
		</div>
	<?php endif; ?> -->

    <div id="logoutButton">
        <a href="login.php"><i class="fas fa-sign-out-alt"></i></a>
    </div>
</header>

<div class="content-container grid">

    <!-- <div class="sectors-container">

        <div class="sector">
            <h3>DUT Informatique</h3>
            <h4>Semestre 01</h4>
        </div>

        <div class="sector">
            <h3>DUT Informatique</h3>
            <h4>Semestre 03</h4>
            <span class="editDelete">
                <i class="fas fa-pencil-alt clickable"></i>
                <i class="far fa-trash-alt clickable"></i>
            </span>
        </div>

        <div class="sector editSectorForm">
            <h4>Modifier une formation</h4>                    
            <input type="text" name="nameSector" placeholder="Nom de la formation" class="inputs">
            <input type="text" name="semesterSector" placeholder="Semestre" class="inputs">
            <input type="text" name="codeSector" placeholder="Code" class="inputs">
            <div class="confirmOrCancel">
                <img src="src/ok.svg" class="confirmSectorForm"></img>
                <img src="src/cross.svg" class="cancelSectorForm"></img>
            </div>
        </div>

        <div class="sector deleteSectorForm">
            <h4>Etes-vous sûrs ?</h4>        
            <div class="confirmOrCancel">
                <img src="src/ok.svg" class="confirmSectorForm"></img>
                <img src="src/cross.svg" class="cancelSectorForm"></img>
            </div>
        </div>

        <div class="sector" id="addSector">
            <h3>Ajouter une formation</h3>
        </div>

        <div class="sector addSectorForm">
            <h4>Ajouter une formation</h4>
            <input type="text" name="nameSector" placeholder="Nom de la formation" class="inputs">
            <input type="text" name="semesterSector" placeholder="Semestre" class="inputs">
            <input type="text" name="codeSector" placeholder="Code" class="inputs">
            <div class="confirmOrCancel">
                <img src="src/ok.svg" class="confirmSectorForm"></img>
                <img src="src/cross.svg" class="cancelSectorForm"></img>
            </div>
            
            <span class="fix-margin">&nbsp;</span> 
        </div>

    </div> -->

    <div class="modules-container">

        <h2 class="moduleTitle">DUT Informatique Semestre 03</h2>

        <div class="modules flex">

            <div class="module module-click flex clickable">
                <img src="src/database-storage.svg" alt="" class="icon-module">
                <span>Affichage classique</span>
                <ul class="softwares list">
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h2>Laragon</h2>
                            <h6>version 18.04</h6>
                            <h4>Commentaire</h4>
                            <h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vel placerat eros, vel pulvinar quam. Nam diam ipsum, iaculis ut congue sit amet, facilisis a dolor. Fusce ornare diam quis arcu scelerisque luctus a eu erat. In hac habitasse platea efficitur.</h6>
                            <h4>Installation</h4>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <h4>Téléchargement</h4>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    </li>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                    <li class="software clickable">
                        <div class="softwareClosed">
                            <img src="src/laragon.png" alt="">
                            <h5>Laragon</h5>
                        </div>
                        <div class="softwareOpened">
                            <h6>Télechargement</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                            <br>
                            <h6>Installation</h6>
                            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">Lien</a>
                        </div>
                        <span class="fix-margin-bottom">&nbsp;</span>
                    </li>
                    
                </ul>
            </div>

            <div class="module flex">
                <img src="src/admin.svg" alt="" class="icon-module">
                <span>Affichage admin</span>
                <ul class="softwares list">
                </ul>
                <span class="editDelete">
                    <i class="fas fa-pencil-alt clickable"></i>
                    <i class="far fa-trash-alt clickable"></i>
                </span>
            </div>

            <div class="module flex">
                <span>Modifier un module</span>
                <input type="text" name="codeModule" placeholder="Code du module" class="inputs">
                <input type="text" name="nameModule" placeholder="Nom complet" class="inputs">

                <label for="imgModule" class="inputfile-label clickable"><i class="fas fa-cloud-upload-alt"></i> Choisir une image </label>
                <input type="file" name="imgModule" id="imgModule" class="inputfile">
                
                <div class="confirmOrCancel">
                    <img src="src/ok.svg" class="clickable"></img>
                    <img src="src/cross.svg" class="clickable"></img>
                </div>
            </div>

            <div class="module flex">
                <h4>Etes-vous sûrs ?</h4>        
                <div class="confirmOrCancel">
                    <img src="src/ok.svg" class="clickable"></img>
                    <img src="src/cross.svg" class="clickable"></img>
                </div>
            </div>
            
            <div class="module clickable flex">
                <span>Ajouter un module</span>
            </div>

            <div class="module flex">
                <span>Ajouter un module</span>
                <input type="text" name="codeModule" placeholder="Code du module" class="inputs">
                <input type="text" name="nameModule" placeholder="Nom complet" class="inputs">

                <label for="imgModule" class="inputfile-label clickable"><i class="fas fa-cloud-upload-alt"></i> Choisir une image </label>
                <input type="file" name="imgModule" id="imgModule" class="inputfile">

                <div class="confirmOrCancel">
                    <img src="src/ok.svg" class="clickable"></img>
                    <img src="src/cross.svg" class="clickable"></img>
                </div>

                <span class="fix-margin">&nbsp;</span>
            </div>

        </div>

    </div>

</div>


<script src="js/main.js"></script>

</body>
</html>