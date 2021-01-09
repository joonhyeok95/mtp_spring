<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>Home</title>
<style>
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
<br><br>
<h1>
	Hello 메타넷티플랫폼 Datadog!  
</h1>
<hr>
<P>  ${serverTime}. 준혁</P>
<hr>
<button onclick="location.replace('/list')">회원리스트</button>
<button onclick="location.replace('/insert')">회원등록</button>
</center>
</body>
</html>
