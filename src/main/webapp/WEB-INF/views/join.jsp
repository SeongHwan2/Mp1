<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/join.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	if(request.getAttribute("msg") != ""){
		alert(request.getAttribute("msg"));
	}
})
</script>
</head>
<body>
	<header>
		<h2>회원가입</h2>
	</header>
	<section>
		<form id="" action="/join" method="POST">
			<p>
			<label>userid</label>
			<input type="text" name="id" placeholder="아이디를 입력하세요" class="tb">
			</p>
			<p>
			<label>password</label>
			<input name="password" class="tb" placeholder="비밀번호를 입력하세요">
			</p>
			<p>
			<label>nickname</label>
			<input type="text" id="nickname" name="nickname" class="tb" placeholder="닉네임을 입력하세요">
			</p>
			<p><button type="submit">등록</button></p>
		</form>
	</section>
</body>
</html>