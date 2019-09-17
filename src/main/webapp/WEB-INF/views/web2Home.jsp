<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web2 home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	html, body{
		margin: 0px;
		padding: 0px;
		box-sizing: border-box;
	}
	
	header {
		text-align: center;
	}
	
	section {
		height: 600px;
	}
	
	h2 {
	}
	
	.Container {
		width: 100%;
		padding: 0;
	}
	
	.profileC {
		width: calc((100% / 10) * 3.7);
		display: inline-block;
		float: left;
	}
	
	.list {
		width: calc((100% / 10) * 6);
		display: inline-block;
		padding: 0;
	}
	
	.list-item {
		border: 1px solid black;
	}
	
</style>
</head>
<body>
	<header>
		<h1>게시판</h1>
	</header>
	<nav>네비</nav>
	<section>
		<article class="Container">
		  <h2>Who am I</h2>
		     <div class="profileC">
		       <img src="" style="width:100%" alt="profilePhoto">
		       <div class="w3-container">
		       <p>nickName</p>
		       </div>
		     </div>
		  <ul class="list">
		    <li class="list-group-item">첫번째글</li>
		    <li class="list-group-item">두번째글</li>
		    <li class="list-group-item">세번째글</li>
		  </ul>
		</article>
	</section>
	<footer>푸터</footer>
</body>
</html>