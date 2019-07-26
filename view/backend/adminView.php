<?php 
ob_start(); 

	while ($data = $chapters->fetch())
	{
?>
<div class="container-fluid">
	<div class="container">
		<div class="chapters">
			<div class="chapter_title">
				<h3><a class="chapter_direction" href="index.php?action=adminChapter&id=<?= $data['id_chapters'] ?>">
					<?= htmlspecialchars($data['chapter_title']) ?></a>
				</h3>
			</div>
			<div class="chapters_content">
				<p><?= htmlspecialchars_decode(substr($data['chapters'], 0, 700)) ?></p>
			</div>
		</div>
	</div>
</div>
<?php
	}
	$chapters->closeCursor();
?>
<?php
$content = ob_get_clean();

require('view/backend/template.php');