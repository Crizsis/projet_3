<?php
session_start();
require('controller/frontend.php');
require('controller/backend.php');

if (isset($_GET['action']))
{
	if($_GET['action'] == 'listChapters')
	{
		listChapters();
	}
	elseif($_GET['action'] == 'chapter')
	{
		if(isset($_GET['id']) && $_GET['id'] > 0)
		{
			chapter($_GET['id']);
		}
		else
		{
			echo 'Erreur dans la recherche du chapitre';
		}
	}
	//--------------------------COMMENTS-------------------------------------//
	elseif($_GET['action'] == 'addComment')
	{
		if(isset($_GET['id']) && $_GET['id'] > 0)
		{
			if(isset($_POST['new_comment']) && !empty($_POST['new_comment']))
			{
				addComment($_GET['id'], $_POST['new_comment']);
			}
			else
			{
				echo 'Erreur: veuillez indiquer un commentaire.';
			}
		}
		else 
		{
			echo 'Erreur dans la recherche du chapitre.';
		}
	}
	else if($_GET['action'] == 'signaler')
	{
		if(isset($_GET['id']) && $_GET['id'] > 0)
		{
			if(isset($_SESSION['username']) && !empty($_SESSION['username']))
			{
				signalAdminComment($_GET['id']);
			}
			else
			{
				signalComment($_GET['id']);
			}
		}
		else
		{
			echo 'Erreur.';
		}
	}
	//-------------------------------CONNECTION---------------------------------//
	else if($_GET['action'] == 'connexion')
	{
		if(isset($_POST['username']) && isset($_POST['password']) ) 
		{
			authenticate($_POST['username'],$_POST['password']);
		}
		else
		{
			login();
		}
	}
	//---------------------------SESSION-ADMIN-------------------------------------//
	else if($_GET['action'] == 'admin')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			listChaptersAdmin();
		}
		else
		{
			"Accès refuser. Vous devez être connecté.";
		}
	}
	elseif($_GET['action'] == 'adminChapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				adminChapter($_GET['id']);
			}
			else
			{
				echo 'Erreur dans la recherche du chapitre';
			}
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'logout')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			session_destroy();
			header('Location: index.php');
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'addChapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			require('view/backend/addChapterView.php');	
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'add_Chapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_POST['new_title'], $_POST['new_chapter']) AND !empty($_POST['new_title']) AND !empty($_POST['new_chapter'])) 
			{
				addChapter($_POST['new_title'], $_POST['new_chapter']);
				header('Location: index.php?action=admin');
			}
			else
			{
				echo "Tous les champs doivent être complétés.";
			}
		}
		else 
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'editChapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				editChapter($_GET['id']);
			}
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'upload_Chapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				if(isset($_POST['upload_title'], $_POST['upload_chapter']) AND !empty($_POST['upload_title']) AND !empty($_POST['upload_chapter']))
				{
					uploadChapter($_POST['upload_title'], $_POST['upload_chapter'], $_GET['id']);
					header("Location: index.php?action=admin");
				}
				else
				{
					echo "Tous les champs doivent être complétés.";
				}
			}
			else
			{
				echo "L'article n'existe pas.";
			}
		}
		else 
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if ($_GET['action'] == 'deleteChapter')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				deleteChapter($_GET['id']);
			}
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'moderation')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			listAdminComment();
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'erase_comment')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				deleteComment($_GET['id']);
			}
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
	else if($_GET['action'] == 'refresh_comment')
	{
		if(isset($_SESSION['username']) && !empty($_SESSION['username']))
		{
			if(isset($_GET['id']) && $_GET['id'] > 0)
			{
				readjustComment($_GET['id']);
			}
		}
		else
		{
			echo "Accès refuser. Vous devez être connecté.";
		}
	}
}
else 
{
	listChapters();
}