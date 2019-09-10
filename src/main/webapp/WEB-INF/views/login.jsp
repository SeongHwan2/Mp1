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
</head>
<body>
	<section>
		<form action="/login" type="POST">
			<p>
			<label>id</label>
			<input type="text" name="userId"></p>
			<p>
			<label>password</label>
			<input type="text" name="password">
			<button type="submit">로그인</button></p>
		</form>
	</section>
</body>
</html>