<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
	<title>회원등록</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<link href="https://10.50.3.90/front/resources/css/common.css" rel="stylesheet" type="text/css"/>
<style>
</style>
</head>
<body>
<center>
<h1>
	회원등록
</h1>

<form method="post" action="<%= request.getContextPath() %>/insert">
	<input type="text" id="name" name="name" placeholder="이름을 입력하세요. "/><br><br>
	<input type="text" id="phone" name="phone" placeholder="전화번호를 입력하세요. "/><br>
	<br>
	<input type="submit" value="저장" />
	<input type="reset" value="초기화" />
</form>
<br><br>
<button type="button" onclick="location.replace('<%= request.getContextPath() %>/')">home</button>&nbsp;&nbsp;&nbsp;
<button type="button" onclick="location.replace('<%= request.getContextPath() %>/list')">회원리스트</button>
</center>
</body>
</html>
