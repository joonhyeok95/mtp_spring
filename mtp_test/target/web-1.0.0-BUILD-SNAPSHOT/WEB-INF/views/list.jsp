<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>회원리스트</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<link href="resources/css/common.css" rel="stylesheet" type="text/css"/>
<style>
</style>
</head>
<body>
<center>
<h1>
	회원리스트 <c:if test="${login != null }">/ 현재로그인 사용자 이름 : ${login.name}</c:if>
</h1>

<table id="customers">
	<thead>
		<tr>
			<th>이름</th>
			<th>전화번호</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="member">
			<tr>
				<td><c:out value="${member.name}"/></td>
				<td><c:out value="${member.phone}"/></td>
				<td><button onclick="location.replace('/delete?name=${member.name}')">삭제</button>
			</tr>
		</c:forEach>
	</thead>
	
</table>
<br><br>
<button onclick="location.replace('/')">home</button>
<button onclick="location.replace('/insert')">회원등록</button>
</center>
</body>
</html>
