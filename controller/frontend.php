<?php

require('model/frontend.php');

function listChapters()
{
	$chapters = getChapters();

	require('view/frontend/listPostView.php');
}

function listChaptersAdmin()
{
	$chapters = getChapters();
	
	require('view/backend/adminView.php');
}

function chapter($id)
{
	$chapter = getChapter($id);
	$comments = getComments($id);
	require('view/frontend/chapterView.php');
}

function adminChapter($id)
{
	$chapter = getChapter($id);
	$comments = getComments($id);
	require('view/backend/chapterAdminView.php');
}

function addComment($id, $newComment)
{
	postComment($id, $newComment);
	
	header('Location: index.php');
}

function listAdminComment()
{
	$report_com = getReportComments();

	require('view/backend/moderationView.php');
}