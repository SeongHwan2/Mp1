<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" href="/resources/css/home2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
	})
</script>
</head>
<body>
	<p id="info">사용자 : <%=session.getAttribute("nick") %>님</p>
	<button id="logout">로그아웃</button>
	
	<header>
		<h1> 게시판 </h1>
	</header>
	<section>
		<form id="edit" action="">
			<button type="submit">글작성</button>
		</form>
		<table>
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>파일목록</td>
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