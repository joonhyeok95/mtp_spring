<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>Home</title>
<style>
	input[type="submit"],
	input[type="reset"],
	button {
		  background-color: #4CAF50; /* Green */
		  border: none;
		  color: white;
		  padding: 15px 32px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		}
		input[type="text"]
		{ width: 100%; /* 원하는 너비 설정 */ 
		height: auto; /* 높이값 초기화 */ 
		line-height : normal; /* line-height 초기화 */ 
		padding: .8em .5em; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */ 
		font-family: inherit; /* 폰트 상속 */ 
		border: 1px solid #999; 
		border-radius: 0; /* iSO 둥근모서리 제거 */ 
		outline-style: none; /* 포커스시 발생하는 효과 제거를 원한다면 */ 
		-webkit-appearance: none; /* 브라우저별 기본 스타일링 제거 */ 
		-moz-appearance: none; 
		appearance: none; }


</style>
</head>
<body>
<center>
<h1>
	회원등록페이지
</h1>

<form method="post" action="/insert">
	<input type="text" id="name" name="name" placeholder="이름을 입력하세요. "/><br><br>
	<input type="text" id="phone" name="phone" placeholder="전화번호를 입력하세요. "/><br>
	<br>
	<input type="submit" value="저장" />
	<input type="reset" value="초기화" />
</form>
<br><br>
<button type="button" onclick="location.replace('/')">home</button>&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.replace('/list')">회원리스트</button>
</center>
</body>
</html>
