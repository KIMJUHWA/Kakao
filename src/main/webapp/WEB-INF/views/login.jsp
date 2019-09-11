<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<style>
		html, body, h1 {margin: 0; padding: 0;}
		h1 {/* margin: 60px 0 60px 0; */ color: white; font-size: 64px; font-weight: 500;}
		
		.container {width: 90%; margin: 0 auto;}
		.loginBox {
			width: 50vw; 
			height: 50vh; 
			background-color:rgba(60, 60, 60, 0.6);
			position: absolute;
    		top: 50%;
    		left: 50%;
    		transform: translate(-50%, -50%);
		}
		.height-100 {height: 100vh;}
		.height-50 {height: 30%;}
		.bgimg {
			background-image: url("/resources/img/sea.jpg");
			min-height: 100%;
  			background-position: center;
 			background-size: cover;
		}
		.text-c {text-align: center;}
		
		.link {background-color: yellow; padding: 50px 50px;}
	</style>
</head>
<body>
	<div class="bgimg height-100">
		<div class="loginBox text-c">
			<div class="height-50">
				<h1>카카오 로그인</h1>
			</div>
			<div class="height-50">
				<a href="/login" class="link">로그인</a>
			</div>
		</div>
	</div>
</body>
</html>