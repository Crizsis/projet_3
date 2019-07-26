<?php 

require('model/database.php');

/*--------------------------------ADMIN----------------------------------------*/

function getUser($username)
{
	$bdd = dbConnection();
	$request = $bdd->prepare("SELECT * FROM admin WHERE user_admin = ?");
	$request->execute(array($username));
	return $request->fetch();
}

/*-------------------------------END-ADMIN----------------------------------------*/

/*--------------------------------CHAPTERS----------------------------------------*/

function postChapter($titleChapter, $contentChapter)
{
	$bdd = dbConnection();
	$chapter = $bdd->prepare('INSERT INTO chapter (chapter_title, chapters) VALUES (?,?)');
	$chapter->execute(array($titleChapter, $contentChapter));

}

function getEditChapter($id)
{
	$bdd = dbConnection();
	$edit_chapter = $bdd->prepare('SELECT id_chapters, chapter_title, chapters FROM chapter WHERE id_chapters = ?');
	$edit_chapter->execute(array($id));
	$editChapter = $edit_chapter->fetch();

	return $editChapter;
}

function updateChapter($titleChapter, $contentChapter, $id)
{
	$bdd = dbConnection();
	$update_chapter = $bdd->prepare('UPDATE chapter SET chapter_title = ?, chapters = ? where id_chapters = ?');
	$update_chapter->execute(array($titleChapter, $contentChapter, $id));
}

function eraseChapter($id)
{
	$bdd = dbConnection();
	$erase = $bdd->prepare('DELETE FROM chapter WHERE id_chapters = ?');
	$erase->execute(array($id));
	header('Location: index.php?action=admin');
}

/*--------------------------------END CHAPTERS----------------------------------------*/

/*--------------------------------COMMENTS----------------------------------------*/

function reportComment($id)
{
	$bdd = dbConnection();
	$report = $bdd->prepare('UPDATE forum SET nbr_report = nbr_report + 1 WHERE id_comment = ?');
	$report->execute(array($id));
}

function getReportComments()
{
	$bdd = dbConnection();
	$report_com = $bdd->query('SELECT id_comment, comment FROM forum WHERE nbr_report >= 10 ORDER BY id_comment DESC');

	return $report_com;
}

function resetComment($id)
{
	$bdd = dbConnection();
	$reset = $bdd->prepare('UPDATE forum SET nbr_report = 0 WHERE id_comment = ?');
	$reset->execute(array($id));
	header('Location: index.php?action=moderation');
}

function eraseComment($id)
{
	$bdd = dbConnection();
	$erase = $bdd->prepare('DELETE FROM forum WHERE id_comment = ?');
	$erase->execute(array($id));
	header('Location: index.php?action=moderation');
}
/*--------------------------------END COMMENTS--------------------------------------*/