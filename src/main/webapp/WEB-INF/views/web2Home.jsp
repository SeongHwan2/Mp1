<%@page import="java.util.HashMap"%>
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
	
	nav {
		widht: 100%;
		height: 50px;
		background-color: black;
	}
	
	footer {
		width: 100%;
		height: 200px;
		background-color: black;
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
	
	nav form {
		display: inline-block;
		height: 100%;
	}
	
	nav form button {
		height: 100%;
		background-color: black;
		color: white;
	}
	
	.dn {
		display: none;
	}
</style>
<script type="text/javascript">
$(document).ready(function() {
	var pro = {};
	var imgUrl = "";
	var nick = "";
	var token ="";
	var loCheck = false;
	if(<%= request.getAttribute("pro") %> != null){
		pro = <%= request.getAttribute("pro") %>;
		imgUrl = pro.pro.profile_image;
		nick = pro.pro.nickname;
		token = '<%= request.getAttribute("access_token") %>';
		console.log(pro.pro.nickname + " : " +  imgUrl + " token : " + token);
		$(".profileC img").attr("src", imgUrl);
		$(".profileC p").text(nick);
		$("#lout input").val(token);
		loCheck = true;
	}
	
	if(!loCheck) {
		$("#lout").addClass("dn");
	}else {
		$("#loin").addClass("dn");
	}
	
});
</script>
</head>
<body>
	<header>
		<h1>게시판</h1>
	</header>
	<nav>
		<form action="/loin" id="loin">
			<button type="submit">로그인</button>
		</form>
		<form action="lout" id="lout">
			<button type="submit">로그아웃</button>
			<input type="text" name="key" class="dn">
		</form>
	</nav>
	<section>
		<article class="Container">
		  <h2>Who am I</h2>
		     <div class="profileC">
		       <img src="" width="75%" height="200px" alt="profilePhoto">
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