<%@page import="com.java.web.MainBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>main</title>
	<link rel="stylesheet" href="/resources/css/index.css">
	<link rel="stylesheet" href="/resources/css/main.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		$(document).ready(function(){
			$("tbody tr").on("click", function(){
									
			})
		});
	</script>
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
	<div>
		<div class="main">
			<img src="/resources/img/h.jpg" class="width100">
		</div>
		<div class="container padding64">
			<h2>게시판</h2>
			
				<form method="post" action="/" class="displayIB">
					<input type="text" name="search">
					<button type="submit"><i class="fa fa-search"></i></button>
				</form>	
				<div class="displayIB float-r">
					<a href="/write"><button type="button">글쓰기</button></a>
				</div>
				
			
			<table class="width100 text-c">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
					</tr>	
				</thead>
				<tbody>
				<%
				List<MainBean> list = (List<MainBean>) request.getAttribute("list");
				if(list == null || list.size() == 0) {
					System.out.println("리스트에 내용이 없습니다");
				%>
					<tr>
						<td colspan="3">조회할 내용이 없습니다</td>
					</tr>
				<%
				} else {
					for(int i = 0; i < list.size(); i++) {
				%>
					<tr><a href="<%=list.get(i).getNo() %>"></a>
						<td><%=list.get(i).getNo() %></td>
						<td><%=list.get(i).getTitle() %></td>
						<td><%=list.get(i).getText() %></td>
					</tr>	
				<%
					}
				}	
				%>	
				</tbody>
			</table>
		</div>
		<div class="container padding64">
			<h2>게시판</h2>
			<ul>
				<li class="width30 margin20">
					<div class="displayFlex">
						<img src="/resources/img/a.jpg" class="width100">
					</div>
					<div class="black">
						<p>제목</p>
						<span>내용</span>
					</div>
				</li>
				<li class="width30 margin20">
					<div class="displayFlex">
						<img src="/resources/img/a.jpg" class="width100">
					</div>
					<div class="black">
						<p>제목</p>
						<span>내용</span>
					</div>
				</li>
				<li class="width30 margin20">
					<div class="displayFlex">
						<img src="/resources/img/a.jpg" class="width100">
					</div>
					<div class="black">
						<p>제목</p>
						<span>내용</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="bgColor">
			<div class="container padding64">
				<h2>THE BAND</h2>
				<p>
				We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
				Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquipex ea commodo consequat. 
				Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
				Excepteur sint occaecat cupidatat non proident, 
				sunt in culpa qui officia deserunt mollit anim id est laborum consecteturadipiscing elit, 
				sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
				</p>
			</div>
		</div>
	</div>
</body>
</html>