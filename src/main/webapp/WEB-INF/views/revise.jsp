<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상세보기</title>
	<link rel="stylesheet" href="/resources/css/main.css">
	<style>
		body {margin: 45px 0 0 0;}
		
		input, textarea {
		width: calc(100% - 22px); padding: 10px; 
		border-radius: 4px; border: 1px solid #CCCCCC;
		}
		textarea {resize: none;}
		
		.container {width: 90%; margin: 0 auto;}
	</style>
</head>
<body>
	<nav>
		<div>
			<a>HOME</a>
			<a>BAND</a>
			<a>TOUR</a>
			<a>CONTACT</a>
			<a class="float-r" href="/login">Sign In</a>
		</div>
	</nav>
	<div class="container">
		<h1>상세보기</h1>
		
		<form>	
			<p>
		   	<label>제목</label>
		   	</p>
		   	<input type="text" name="title">
		  
		   	<p>
		   	<label>내용</label>
		   	</p>
		   	<textarea name="text"></textarea>
		       	
		    <button type="submit" formaction="/write/update">수정</button>
		    <button type="submit" formaction="/write/delete">삭제</button>
		    <a href="/"><button type="button">목록</button></a>   	
		</form>
	</div>
</body>
</html>