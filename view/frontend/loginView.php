<?php
ob_start();
?>

<div class="container-fluid">
	<div class="container">
		<form method="post">
			<p>Admin</p>
			<input type="text" name="username" class="form-control mb-2"/>
			<div class="empty_space" style="height: 10px;"></div>
			<p>Password</p>
			<input type="password" name="password" class="form-control mb-2"/>
			<input type="submit" name="Valider" value="Connexion" class="btn btn-outline-primary" />
		</form>
	</div>
</div>

<?php
	
$content = ob_get_clean();
require('view/frontend/template.php');