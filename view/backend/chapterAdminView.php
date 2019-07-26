<?php
ob_start();
?>
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
		<a href="index.php?action=deleteChapter&id=<?= $_GET['id'] ?>" class="btn btn-outline-danger btn_float"> Supprimer </a>
		<a href="index.php?action=editChapter&id=<?= $_GET['id'] ?>" class="btn btn-outline-success btn_margin btn_float"> Modifier </a><br/>
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
	$content = ob_get_clean();
	require('view/backend/template.php');