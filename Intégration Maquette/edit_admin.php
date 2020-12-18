<!DOCTYPE html>
<html lang="fr">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 

    <!-- TITRE ET ICONE -->
    <title>Modifier un logiciel</title>
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
            <li>
                <div class="module" id="bdd">
                    <p> <span><i class="fas fa-angle-right"></i></span> Base de données</p>
                    <ul class="softwares">
                        <li><a href="#">Oracle</a></li>
                        <li><a href="#">SQLTools</a></li>
                        <li><a href="#">MongoDB</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <div class="module" id="reseaux">
                    <p> <span><i class="fas fa-angle-right"></i></span> Réseaux</p>
                    <ul class="softwares">
                        <li><a href="#">Laragon</a></li>
                        <li><a href="#">XAMPP</a></li>
                        <li><a href="#">VPN</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <div class="module" id="coo">
                    <p> <span><i class="fas fa-angle-right"></i></span> Conception orientée objet</p>
                    <ul class="softwares">
                        <li><a href="#">Visual Studio</a></li>
                        <li><a href="#">.NET</a></li>
                        <li><a href="#">Visual Paradigm</a></li>
                    </ul>
                </div>
                <div class="module" id="sdd">
                    <p> <span><i class="fas fa-angle-right"></i></span> Structure de données</p>
                    <ul class="softwares">
                        <li><a href="#">Laragon</a></li>
                        <li><a href="#">XAMPP</a></li>
                        <li><a href="#">VPN</a></li>
                    </ul>
                </div>
            </li>
            <li>
                <div class="module" id="web">
                    <p> <span><i class="fas fa-angle-right"></i></span> Programmation web</p>
                    <ul class="softwares">
                        <li><a href="#">Visual Studio</a></li>
                        <li><a href="#">.NET</a></li>
                        <li><a href="#">Visual Paradigm</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>

    <!-- CONTENU -->
    <div id="content-container">
        <section id="page">
			<form id="add_software_form" method="post" action="./add_software.php" enctype="multipart/form-data">
				<h1 id="add_software_form_title">Nouveau logiciel</h2>
				
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

				<p id="add_software_form_button">
					<input type="submit" value="Add the software" />
				</p>
				<p id="error_message">
					<?php
						$name;
						$version;
						$logo;
						$setup;
						$tuto;
						$comment;
						$error = FALSE;
						
						// Eliminates HTML injection attacks
						if (isset($_POST['name'])) $name = htmlspecialchars($_POST['name']);
						if (isset($_POST['version'])) $version = htmlspecialchars($_POST['version']);
						if (isset($_FILES['logo'])) $logo = $_FILES['logo'];
						if (isset($_POST['setup'])) $setup = htmlspecialchars($_POST['setup']);
						if (isset($_FILES['tuto'])) $tuto = $_FILES['tuto'];
						if (isset($_POST['comment'])) $comment = htmlspecialchars($_POST['comment']);
										
						// We check if the required fields are completed
						if (isset($name) AND isset($version)) {

							// We check that the version complies with the standard
							if (preg_match("#^[0-9]+([.][0-9]+){1,2}[+]?$#", $version)) {
								
								// PHP cannot receive files larger than 8 MB 
								if (isset($logo) AND $logo['size'] > 0) {
										
									// We check there is not error with the logo file load
									if ($logo['error'] == 0) {
										
										// PHP cannot receive files larger than 8 MB 
										if ($logo['size'] <= 8000000) {
											$logo_infos = pathinfo($logo['name']);
											$extension = $logo_infos['extension']; 
											$allowed_extensions = array('jpg', 'jpeg', 'png');
											
											// We check that the file extension is among those authorized
											if (!in_array($extension, $allowed_extensions)) {
												$error = TRUE;
												echo "The logo file extension is not compatible (.jpg, .jpeg, .png)";
											}
										}
										else {
											$error = TRUE;
											echo "The logo file is too large (8 MB max)";
										}
									}
									else {
										$error = TRUE;
										echo "An error has occured with the logo file";
									}
								}
								
								// PHP cannot receive files larger than 8 MB 
								if (isset($tuto) AND $tuto['size'] > 0) {
										
									// We check there is not error with the tutorial file load
									if ($tuto['error'] == 0) {
										
										// PHP cannot receive files larger than 8 MB 
										if ($tuto['size'] <= 8000000) {
											$tuto_infos = pathinfo($tuto['name']);
											$extension = $tuto_infos['extension']; 
											$allowed_extensions = array('pdf');
											
											// We check that the file extension is among those authorized
											if (!in_array($extension, $allowed_extensions)) {
												$error = TRUE;
												echo "The tutorial file extension is not compatible (.pdf)";
											}
										}
										else {
											$error = TRUE;
											echo "The tutorial file is too large (8 MB max)";
										}
									}
									else {
										$error = TRUE;
										echo "An error has occured with the tutorial file";
									}
								}
								
								// If there is not error
								if (!$error) {
									// Add the new software to the database
								}
							}
							else {
								echo "The version format is incorrect";
							}
						}
					?>
				</p>
			</form>
		</section>
    </div>
    

    <script src="js/main.js"></script>

</body>
</html>