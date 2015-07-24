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
	<title>OPODG Welcome</title>
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

<%@ include file="cmn/include/header.jsp" %>

	<div role="main" class="ui-content jqm-content" style="margin:0 auto;margin-left:auto;margin-right:auto;align:center;text-align:center;">
			<a href="<%=request.getContextPath() %>/foodList.web" class="ui-btn ui-btn-inline" style="width:80px;height:80px;" data-ajax="false">맛집</a>
			<a href="#" class="ui-btn ui-btn-inline" style="width:80px;height:80px;">낚시</a>
			<a href="#" class="ui-btn ui-btn-inline" style="width:80px;height:80px;">자전거</a>
			<a href="#" class="ui-btn ui-btn-inline" style="width:80px;height:80px;">나이트</a>
			<a href="#" class="ui-btn ui-btn-inline" style="width:80px;height:80px;">etc1</a>
			<a href="#" class="ui-btn ui-btn-inline" style="width:80px;height:80px;">etc2</a>
	</div><!-- /content -->
<%@ include file="cmn/include/footer.jsp" %>
<%-- <%@ include file="cmn/include/menu.jsp" %> --%>
</div><!-- /page -->
</body>
</html>
