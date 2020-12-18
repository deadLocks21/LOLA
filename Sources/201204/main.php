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

</head>

<body class="grid">
    
<nav class="flex align-center">
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

    <input type="text" placeholder="rechercher un logiciel" class="button" id="search">

    <ul id="modules">
        <?php $courseDirectory = CourseDirectoryDao::get($userInfos['login']); ?>
        <?php foreach ($courseDirectory->getCourses() as $c) { ?>
        <li>
            <div class="module" id="<?php echo $c->getCode();?>">
                <p> <span><i class="fas fa-angle-right"></i></span> <?php echo $c->getName();?></p>
                <ul class="softwares">
                    <?php foreach ($c->getSoftwares() as $s) {?>
                    <li><a id="<?php echo $s->getId();?>" class="soft"><?php echo $s->getName();?></a></li>
                    <?php } ?>
                </ul>
            </div>
        </li>
        <?php } ?>
    </ul>

	<?php if($admin == 2) : ?>
		<div class="button" id="addSoftware">
			Demander ajout de logiciel
		</div>
	<?php endif; ?>

    <div class="button" id="logoutButton">
        <a href="login.php">Déconnexion provisoire</a>
    </div>
</nav>

<!-- CONTENU -->
<div class="content-container" id="contentSoft">
        <div id="content">
            <div class="flex align-center justify-between" id="content-top">
                <div id="nameAndVersion">
                    <h1 id="softwareName">Laragon</h1>
                    <br>
                    <h3 id="softwareVersion">version 8.4.10</h3>
                </div>

                <h2 id="softwareModule">Réseaux</h2>

                <img src="src/laragon.png" alt="laragon" id="softwareLogo">
            </div>

            <p id="softwareDesc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis magna suscipit, consectetur erat vel, cursus urna. Sed eu blandit elit, a tristique nisi. Morbi tristique a nunc nec efficitur. Etiam magna orci, rhoncus eu nisl et, porttitor consectetur ipsum. Integer tincidunt est non est posuere, sit amet tincidunt est facilisis. Sed feugiat odio tortor, sed sagittis nunc ornare sit amet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce sed fringilla ante. Duis quis mattis turpis. Nam sit amet enim et leo elementum malesuada non eu nisl. Maecenas ac mauris volutpat, hendrerit magna nec, ullamcorper odio. Suspendisse vitae nunc scelerisque eros accumsan cursus. Vivamus tristique molestie orci at convallis. Proin nisi ipsum, fringilla ac tellus at, congue tincidunt mauris. Cras fermentum enim orci, id consectetur massa laoreet quis. Pellentesque tristique leo sit amet dapibus sagittis.</p>

            <h2>Téléchargement</h2>
            <a id="softwareDownloadLink" href="https://laragon.org/download/index.html">https://laragon.org/download/index.html</a>

            <h2>Installation</h2>
            <a id="softwareTutorialLink" href="https://youtu.be/dQw4w9WgXcQ">https://youtu.be/dQw4w9WgXcQ</a>
            <!-- VIDEO -->
            <!-- <div id="iframe-container">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/j-5BN-DQWU8" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div> -->

			<?php if($admin == 3) : ?>
			<div id="editSoftware">
				<i class="fas fa-pencil-alt"></i>
			</div>
			<?php endif; ?>
			<p id="idSoftware" style="display: none;"></p>
        </div>
	</div>
	
	<div class="content-container" id="contentForm">
        <section id="page">
			<form id="add_software_form" method="post" action="./add_software.php" enctype="multipart/form-data">
				<h1 id="add_software_form_title">Modifier une fiche logiciel</h2>
				
				<div>
					<label class="add_software_form_feature" for="name">Nom <span class="required">*</span></label>
					<br/>
					<input class="add_software_form_input" type="text" name="name" id="name" placeholder="MonApp" maxlength="100" value="<?php if (isset($_POST['name'])) echo $_POST['name']; ?>" required />
				</div>

				<div>
					<label class="add_software_form_feature" for="version">Version <span class="required">*</span></label>
					<br/>
					<input class="add_software_form_input" type="text" name="version" id="version" placeholder="1.0" value="<?php if (isset($_POST['version'])) echo $_POST['version']; ?>" required />
				</div>
				
				<div>
					<label class="add_software_form_feature" for="logo">Logo</label>
					<br/>
					<input class="add_software_form_input_file" type="file" name="logo" id="logo" />
				</div>

				<div>
					<label class="add_software_form_feature" for="setup">Setup URL</label>
					<br/>
					<input class="add_software_form_input" type="text" name="setup" id="setup" placeholder="www.myapp/setup.com" value="<?php if (isset($_POST['setup'])) echo $_POST['setup']; ?>"/>
				</div>

				<div>
					<label class="add_software_form_feature" for="tuto">Tutorial URL</label>
					<br/>
					<input class="add_software_form_input_file" type="file" name="tuto" id="tuto" />
				</div>

				<div>
					<label class="add_software_form_feature" for="comment">Comment</label>
					<br/>
					<textarea class="add_software_form_input" name="comment" id="comment" placeholder="Enter a comment about the software..." rows="5" style="width: 80%; padding: 0.5rem; font-size: 1.5rem;"><?php if (isset($_POST['comment'])) echo $_POST['comment']; ?></textarea><br />
					<span id="required_description"><span class="required">*</span> Required fields</span>
				</div>

				<p>
					<input id="add_software_form_button" type="button" value="Add the software" />
				</p>
			</form>
		</section>
    </div>    


<script src="js/main.js"></script>

</body>
</html>