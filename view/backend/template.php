<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>jeanF auteur</title>
	<link rel="stylesheet" href="public/css/bootstrap.min.css" />
	<link rel="stylesheet" href="public/css/style.css">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<script src="https://cloud.tinymce.com/5/tinymce.min.js?apiKey=5v86axwzuxotktd0kt5qd5i31wmg3lznp6idplrbizjlfq63"></script>
	<script>tinymce.init({ selector:'textarea', convert_fonts_to_spans:true });</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.php?action=admin">Jean Forteroche</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active">
					<a class="nav-link" href="index.php?action=addChapter">Nouveau chapitre <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="index.php?action=moderation">Modération <span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>
		<div class="my-lg-0">
			<a class="nav-link deco_btn" href="index.php?action=logout">Déconnexion <span class="sr-only">(current)</span></a>	
		</div>
	</nav>

	<?= $content ?>
	
	<div class="footer-copyright text-center py-3">© 2019 Copyright:
		<a href="http:quentinbordillon.com" class="me"> quentinbordillon.com</a>
	</div>
</body>
</html>