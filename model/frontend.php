<?php 

require('model/database.php');

/*--------------------------------CHAPTERS----------------------------------------*/

function getChapters()
{
	$bdd = dbConnection();
	$chapters = $bdd->query('SELECT id_chapters, chapter_title, chapters FROM chapter ORDER BY id_chapters');

	return $chapters;
}

function getChapter($id)
{
	$bdd = dbConnection();
	$req = $bdd->prepare('SELECT id_chapters, chapter_title, chapters FROM chapter WHERE id_chapters = ?');
	$req->execute(array($id));
	$chapter = $req->fetch();

	return $chapter;
}

/*--------------------------------END CHAPTERS----------------------------------------*/

/*-----------------------------------COMMENTS----------------------------------------*/

function getComments($id)
{
	$bdd = dbConnection();
	$req = $bdd->prepare('SELECT * FROM forum WHERE id_chapter = ? ORDER BY id_comment DESC');
	$req->execute(array($id));

	$comments = $req->fetchAll(PDO::FETCH_ASSOC);

	return $comments;
}

function postComment($id,$new_Comment)
{
	$bdd = dbConnection();
	$comment = $bdd->prepare('INSERT INTO forum (id_chapter, comment) VALUES (?,?)');
	$comment->execute(array($id,$new_Comment));
}
