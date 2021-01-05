<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>회원리스트</title>
</head>
<body>
<h1>
	회원리스트  
</h1>

<table border="1">
	<thead>
		<tr>
			<th>이름</th>
			<th>전화번호</th>
			<!-- <th>삭제</th> -->
		</tr>
		<c:forEach items="${list}" var="member">
			<tr>
				<td><c:out value="${member.name}"/></td>
				<td><c:out value="${member.phone}"/></td>
				<!-- <td><button onclick="location.replace('/delete?name=${member.name}')">삭제</button> -->
			</tr>
		</c:forEach>
	</thead>
	
</table>

<button onclick="location.replace('/')">home</button>
<button onclick="location.replace('/insert')">회원등록</button>
</body>
</html>
