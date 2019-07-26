<?php
session_start();

require('model/backend.php');

/*--------------------------------ADMIN----------------------------------------*/

function login() {
	require('view/frontend/loginView.php');
}

function authenticate($username, $password)
{
	$user = getUser($username);

	if(isset($user['id_admin'])) {
		if(password_verify(htmlspecialchars($password), $user['password'])) {
			$_SESSION['username'] = $user['user_admin'];
			header("Location: index.php?action=admin");
		}
		else {
			die("Cette combinaison nom d\'utilisateur et mot de passe ne correspond pas.");
		}
	}
	else {
		die("Cet utilisateur n\'existe pas");
	}
}

/*-------------------------------END-ADMIN----------------------------------------*/


/*--------------------------------CHAPTERS----------------------------------------*/

function addChapter($titleChapter,$contentChapter)
{
	$postNewChapter = postChapter($_POST['new_title'],$_POST['new_chapter']);
}

function uploadChapter($titleChapter, $contentChapter, $id)
{
	$postUploadChapter = updateChapter($_POST['upload_title'],$_POST['upload_chapter'], $_GET['id']);
}

function deleteChapter($id)
{
	eraseChapter($_GET['id']);
}

function editChapter($id)
{
	$editChapter = getEditChapter($_GET['id']);
	require('view/backend/editChapterView.php');
}

/*------------------------------END-CHAPTERS----------------------------------------*/


/*----------------------------------COMMENTS----------------------------------------*/

function signalComment($id)
{
	reportComment($_GET['id']);
	header('Refresh:0; index.php');
}

function signalAdminComment($id)
{
	reportComment($_GET['id']);
	header('Refresh:0; index.php?action=admin');
}

function deleteComment($id)
{
	eraseComment($_GET['id']);
}

function readjustComment($id)
{
	resetComment($_GET['id']);
}