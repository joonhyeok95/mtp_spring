<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<link href="resources/css/common.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
<br><br>
<h1>
	Hello 메타넷티플랫폼 Datadog! ver1.0.5
</h1>
<hr>
<P>  서버시간 : ${serverTime}. </P>

<c:choose>
    <c:when test="${login != null}">
        <h2>로그인 되었습니다. </h2>
        이름 : ${login.name}
 		<br /><br />
        전화번호 : ${login.phone}
        <br /><br />
        <button onclick="location.replace('/logout')" class="bt2">로그아웃</button>
    </c:when>
    <c:otherwise>
        <h2>로그인 </h2>
        <form:form>
        <table>
            <tr height="40px">
                <td>이름</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr height="40px">
                <td>전화번호</td>
                <td><input type="text" name="phone"></td>
            </tr>
        </table>
        <table>
            <tr>
                <td align="center"><input type="submit" value="로그인"></td>
                <td align="center"><input type="reset" value="지우기"></td>
            </tr>
        </table>
        </form:form>
    </c:otherwise>
</c:choose>
<hr>
<button onclick="location.replace('/list')">회원리스트</button>
<button onclick="location.replace('/insert')">회원등록</button>
</center>
</body>
</html>
