<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page import="kr.sw.web.beans.ListBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="/resources/css/home.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	function select(){
		$("tbody").empty();
		$.ajax({
			url: "/select",
			type: "POST" //get, post
		}).done(function(res){
			console.log("성공");
			console.log(res);
			storage = res.list;
			console.log(storage);
			if(storage.length > 0) {
	 			for(var i = 0; i < storage.length; i++){
					var userId = (storage[i].userId != null)? storage[i].userId:"미상";
					var tag = '<tr class="contents">' +
					'<td>' + storage[i].no + '</td>' +
					'<td>' + storage[i].title + '</td>' +
					'<td>' + storage[i].nickName + '</td>' + 
	  				'</tr>';
					$("tbody").append(tag); 
				}
			}
 			$('.contents').click(function(){
				var index = $(".contents").index(this);
				console.log(index);
				console.log(storage[index]);
				location.href = "/create/?index=" + index;
			});
 			
 			
 			
		})
	}
	
	if('<%=session.getAttribute("nick")%>' == "null"){
			$("#edit button:submit").addClass("dn");
			$("#login").removeClass("dn");
	}
	
	$("#login").on("click", function(){
		location.href="/login";
	})
	
	select();
})
</script>
</head>
<body>
	<p id="info">사용자 : <%=session.getAttribute("nick") %>님</p>
	<form action="/logout">
		<button type="submit" id="logout">로그아웃</button>
		<button type="button" class="dn" id="login">로그인</button>
	</form>
	
	
	<header>
		<h1> 게시판 </h1>
	</header>
	<section>
		<form id="edit" action="/create" method="POST">
			<button type="submit">글작성</button>
		</form>
		<table>
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td>이거 어렵다</td>
					<td>누구게</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2</td>
					<td>그치</td>
					<td>몰라</td>
				</tr>
			</tbody>
		</table>
	</section>
</body>
</html>