<?php ob_start(); ?>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="index.php">Jean Forteroche</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
       <div class="collapse navbar-collapse" id="navbarNavDropdown">
         <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="new_chapter.php">Nouveau chapitre <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="moderation.php">Modération <span class="sr-only">(current)</span></a>
            </li>
         </ul>
       </div>
       <div class="my-lg-0">
          <a class="nav-link deco_btn" href="deconnexion.php">Déconnexion <span class="sr-only">(current)</span></a>
        </div>
      </nav>

<?php 

	$menu_admin = ob_get_clean();
	require('template.php');