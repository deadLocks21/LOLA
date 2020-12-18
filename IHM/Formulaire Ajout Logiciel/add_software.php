<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<!--<link rel="stylesheet" href="./css/main.css" />-->
		<link rel="stylesheet" href="./css/main_style.css" /> <!-- A SUPPRIMER -->
		<link rel="stylesheet" href="./css/add_software.css" />
		
		<!-- POLICE -->
		<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
	
		<title>LOLA</title>
	</head>
	
	<body>
		<section id="page">
			<form id="add_software_form" method="post" action="./add_software.php" enctype="multipart/form-data">
				<h2 id="add_software_form_title">New Software</h2>
				<div id="add_software_form_divider"></div>
				<p>
					<label class="add_software_form_feature" for="name">Name <span class="required">*</span></label><br />
					<input class="add_software_form_input" type="text" name="name" id="name" placeholder="MyApp" maxlength="100" value="<?php if (isset($_POST['name'])) echo $_POST['name']; ?>" required />
				</p>
				<p>
					<label class="add_software_form_feature" for="version">Version <span class="required">*</span></label><br />
					<input class="add_software_form_input" type="text" name="version" id="version" placeholder="1.0" value="<?php if (isset($_POST['version'])) echo $_POST['version']; ?>" required />
				</p>
				<p>
					<label class="add_software_form_feature" for="logo">Logo</label><br />
					<input class="add_software_form_input_file" type="file" name="logo" id="logo" />
				</p>
				<p>
					<label class="add_software_form_feature" for="setup">Setup URL</label><br />
					<input class="add_software_form_input" type="text" name="setup" id="setup" placeholder="www.myapp/setup.com" value="<?php if (isset($_POST['setup'])) echo $_POST['setup']; ?>"/>
				</p>
				<p>
					<label class="add_software_form_feature" for="tuto">Tutorial URL</label><br />
					<input class="add_software_form_input_file" type="file" name="tuto" id="tuto" />
				</p>
				<p>
					<label class="add_software_form_feature" for="comment">Comment</label><br />
					<textarea class="add_software_form_input" name="comment" id="comment" placeholder="Enter a comment about the software..." rows="5" ><?php if (isset($_POST['comment'])) echo $_POST['comment']; ?></textarea><br />
					<span id="required_description"><span class="required">*</span> Required fields</span>
				</p>
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
	</body>
</html>