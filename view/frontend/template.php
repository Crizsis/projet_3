<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>jeanF auteur</title>
	<link rel="stylesheet" href="public/css/bootstrap.min.css" />
	<link rel="stylesheet" href="public/css/style.css">
	<meta name="viewport" content="width=device-width, user-scalable=no">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.php">Jean Forteroche</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>	

	<?= $content ?>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.php?action=connexion">Accès admin</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
	<div class="footer-copyright text-center py-3">© 2019 Copyright:
		<a href="http:quentinbordillon.com" class="me"> quentinbordillon.com</a>
	</div>
</body>
</html>