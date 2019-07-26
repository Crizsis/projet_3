<?php
ob_start();
?>

<div class="container-fluid">
	<div class="container">
		<h3>Commentaire à modérer :</h3>
	</div>
</div>
<?php
while($data = $report_com->fetch())
{
	?>
	<div class="container-fluid">
		<div class="container">
			<div class="report_comment">
				<p><?= htmlspecialchars($data['comment']) ?></p>
				<a href="index.php?action=erase_comment&id=<?= $data['id_comment'] ?>" class="btn btn-outline-danger btn_float">Supprimer</a>
				<a href="index.php?action=refresh_comment&id=<?= $data['id_comment'] ?>" class="btn btn-outline-success btn_margin btn_float">Ajouter</a><br/>
			</div>
		</div>
	</div>

	<?php
}
$content = ob_get_clean();

require('view/backend/template.php');