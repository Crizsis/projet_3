<?php ob_start(); ?>
	<div class="container-fluid">
		<div class="container">
			<div class="chapter_title">
				<h3>
					<?= htmlspecialchars($chapter['chapter_title']) ?>
				</h3>
			</div>
			<div class="chapter_content">
				<p>
					<?= htmlspecialchars_decode($chapter['chapters']) ?>
				</p>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<div class="text_add_comment">
				<form action="index.php?action=addComment&id=<?= $_GET['id'] ?>" method="POST">
					<textarea name="new_comment" placeholder="Commentaire" class="text"></textarea><br />
					<input type="submit" value="Envoyer" class="btn btn-outline-secondary">
					<div class="empty_space" style="height: 50px;"></div>
				</form>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="container">
			<h4>Commentaires:</h4>
			<div class="empty_space" style="height: 30px;"></div>
		</div>
	</div>
	<?php
		foreach ($comments as $key => $comment) {
	?>	
	<div class="container-fluid">
		<div class="container">
			<div class="chapter_comment">
				<p><?= htmlspecialchars($comment['comment']) ?></p>
				<a href="index.php?action=signaler&id=<?= $comment['id_comment'] ?>" class="btn btn-outline-warning btn_float"> Signaler </a>
				<div class="empty_space" style="height: 50px;"></div>
			</div>
		</div>
	</div>
	<?php
		}
	?>
<?php

	$content = ob_get_clean();
	require('view/frontend/template.php');