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
	var msg = '<%=request.getAttribute("msg") %>';
		alert(msg);
	
	$("#check").on("click", function(){
		if($("#idt").val() != ""){
			$.ajax({
				url: "/idCheck",
				type: "POST",
				data: {
					"id" : $("#idt").val()
				}
			}).done(function(data){
				var check = data.check;
				console.log(check);
				if(check == true){
					$("#idt").addClass("id_success");
				}else {
					$("#idt").addClass("id_error");
					$("#idt").val("중복된 아이디 입니다.");
				}
			})
		}else {
			alert("값을 입력하세요");
		}
		
		
		//$("#idt").addClass("id_error");
	})
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
			<input type="text" id="idt" name="id" placeholder="아이디를 입력하세요" class="tb">
			<button type="button" id="check">확인</button>
			</p>
			<p>
			<label>password</label>
			<input name="password" class="tb" placeholder="비밀번호를 입력하세요">
			</p>
			<p>
			<label>nickname</label>
			<input type="text" id="nickname" name="nickname" class="tb" placeholder="닉네임을 입력하세요">
			</p>
			<p>
				<button type="submit">등록</button>
			</p>
			
		</form>
	</section>
</body>
</html>