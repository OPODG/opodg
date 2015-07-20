<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<html>
<head>
	<title>Home</title>	
</head>
 
<body>
<h2>로그인 성공 </h2>
이름 : ${sessionScope.userLoginInfo.username} 
<a href="logout.web">로그아웃</a>
<a href="page1.web">페이지1</a>
<a href="<c:url value="j_spring_security_logout" />" > Logout</a>
</body>
</html>