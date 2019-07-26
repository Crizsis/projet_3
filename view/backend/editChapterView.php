<?php
ob_start();

?>
<div class="container-fluid">
	<div class="container">
		<form method="POST" action="index.php?action=upload_Chapter&id=<?= $_GET['id'] ?>">
			<p>Titre du Chapitre</p>
			<input type="text" name="upload_title" value="<?= htmlspecialchars($editChapter['chapter_title']) ?>"/>
			<div class="empty_space" style="height: 50px;"></div>
			<textarea id="text_area" name="upload_chapter" style="height: 600px;">
				<?= htmlspecialchars_decode($editChapter['chapters']) ?>
			</textarea>
			<div class="empty_space" style="height: 50px;"></div>
			<input type="submit" value="Valider" class="btn btn-outline-secondary" name="add_chapter"/>
		</form>
	</div>
</div>

<?php
	$content = ob_get_clean();
	require('view/backend/template.php');