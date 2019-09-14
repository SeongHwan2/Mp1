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
	var idCheck = false;
	if(msg != "null"){
		alert(msg);
	}
	
	$("form").submit(function(e) {
		  if(!idCheck){
			  e.preventDefault();
			  alert("아이디 중복체크를 해주세요");
		  }
	});
	
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
						if($("#idt").hasClass("id_success")){
							$("#idt").removeClass("id_success");
						}
						$("#idt").addClass("id_error");
						$("span").text("사용불가");
						$("span").css('color', 'red');
					}else {
						if($("#idt").hasClass("id_error")){
							$("#idt").removeClass("id_error");
						}
						$("#idt").addClass("id_success");
						$("span").text("사용가능");
						$("span").css('color', 'blue');
					}
				})
				idCheck = true;
			}else {
				alert("값을 입력하세요");
			}
	})
	
	
})
</script>
</head>
<body>
	<header>
		<h2>회원가입</h2>
	</header>
	<section>
		<form id="" action="/join" method="POST" name="fr" id="fr">
			<p>
			<label>userid</label>
			<input type="text" id="idt" name="id" required="required" placeholder="아이디를 입력하세요" class="tb">
			<button type="button" id="check">확인</button>
			<span></span>
			</p>
			
			<p>
			<label>password</label>
			<input name="password" class="tb" required="required" placeholder="비밀번호를 입력하세요">
			</p>
			<p>
			<label>nickname</label>
			<input type="text" id="nickname" name="nickname" required="required" class="tb" placeholder="닉네임을 입력하세요">
			</p>
			<p>
			<input type="submit" value="등록" id="submit">
			</p>
			
		</form>
	</section>
</body>
</html>