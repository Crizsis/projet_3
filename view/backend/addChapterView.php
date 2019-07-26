<?php
ob_start();
?>
<div class="container-fluid">
	<div class="container">
		<form method="POST" action="index.php?action=add_Chapter">
			<p>Titre du Chapitre</p>
			<input type="text" name="new_title" />
			<div class="empty_space" style="height: 50px;"></div>
			<textarea id="text_area" name="new_chapter" style="height: 600px;"></textarea>
			<div class="empty_space" style="height: 50px;"></div>
			<input type="submit" value="Valider" class="btn btn-outline-secondary" name="add_chapter"/>
		</form>
	</div>
</div>

<?php

	$content = ob_get_clean();
	require('view/backend/template.php');