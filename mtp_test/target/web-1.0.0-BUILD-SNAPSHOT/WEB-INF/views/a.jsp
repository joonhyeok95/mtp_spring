<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/insert">
	<input type="text" id="name" name="name" placeholder="이름을 입력하세요. "/><br><br>
	<input type="text" id="phone" name="phone" placeholder="전화번호를 입력하세요. "/><br>
	<br>
	<input type="submit" value="저장" />
	<input type="reset" value="초기화" />
</form>
</body>
</html>