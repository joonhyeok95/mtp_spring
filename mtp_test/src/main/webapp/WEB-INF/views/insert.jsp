<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	회원등록페이지
</h1>

<form method="post" action="">
	이름 <input type="text" name="name" placeholder="in name"/><br>
	전화번호 <input type="text" name="phone" placeholder="in phone"/><br>
	<input type="submit" value="저장" />
	<input type="reset" value="초기화" />
</form>
<br><br>
<button onclick="location.replace('/')">home</button>
<button onclick="location.replace('/list')">회원리스트</button>

</body>
</html>
