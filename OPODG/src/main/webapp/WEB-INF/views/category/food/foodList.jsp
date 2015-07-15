<%@ page contentType="text/html;charset=UTF-8" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="util.constants.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OPODG - Food</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/jquery/_assets/css/jqm-demos.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="<%=request.getContextPath() %>/jquery/js/jquery.js"></script>
	<script src="<%=request.getContextPath() %>/jquery/_assets/js/index.js"></script>
	<script src="<%=request.getContextPath() %>/jquery/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<div data-role="page" class="">
<%@ include file="../../cmn/include/header_back.jsp" %>

	<div role="main" class="ui-content jqm-content">
		<ul data-role="listview" data-filter="true" data-filter-placeholder="Search title " data-inset="true">
			<li><a href="<%=request.getContextPath() %>/foodDetail.web" data-ajax="false">거북곱창</a></li>
			<li><a href="#">치킨 매니아</a></li>
			<li><a href="#">박가부대찌게</a></li>
			<li><a href="#">쌈촌</a></li>
			<li><a href="#">암소 한마리</a></li>
			<li><a href="#">흑돈가</a></li>
		</ul>
	</div><!-- /content -->
<%@ include file="../../cmn/include/footer.jsp" %>
<%-- <%@ include file="cmn/include/menu.jsp" %> --%>
<%@ include file="../../login/login.jsp" %>
</div><!-- /page -->
</body>
</html>
