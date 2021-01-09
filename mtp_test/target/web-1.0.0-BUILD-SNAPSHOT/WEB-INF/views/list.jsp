<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>회원리스트</title>

<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
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
</style>
</head>
<body>
<center>
<h1>
	회원리스트  
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
