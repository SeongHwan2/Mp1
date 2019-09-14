<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	html, body{
		margin:0;
		padding: 0;
	}
	
	section {
		width : 100%;
		height: 500px;
		text-align: center;
		line-height: 500px;
		vertical-align: middle;
	}
	
	section p {
		display: inline-block;
	}
	
	form {
		display: inline-block;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		var msg = '<%=request.getAttribute("msg") %>';
		if(msg != "null"){
			alert(msg);
		}
		
		$("#join").on("click", function(){
			location.href="/join";
		})
	})
</script>
</head>
<body>
	<section>
		<form action="/login" method="POST">
			<p>
			<label>id</label>
			<input type="text" name="id"></p>
			<p>
			<label>password</label>
			<input type="password" name="password">
			<button type="submit">로그인</button></p>
			<button type="button" id="join">회원가입</button>
		</form>
	</section>
</body>
</html>