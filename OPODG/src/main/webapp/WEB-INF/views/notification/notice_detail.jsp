<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.*"%>
<%@ page import="util.*" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OPODG - Notification</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="../jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="../jquery/_assets/css/jqm-demos.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="../jquery/js/jquery.js"></script>
	<script src="../jquery/_assets/js/index.js"></script>
	<script src="../jquery/js/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>
<% 
	HashMap hm = (HashMap)request.getAttribute("hm");
%>
<div data-role="page" class="jqm-demos jqm-home">

	<div data-role="header" class="jqm-header">
		<h2>OPODG > List > Detail</h2>
		<a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext" class="ui-link ui-btn-left ui-btn ui-icon-carat-l ui-btn-icon-notext ui-shadow ui-corner-all" data-role="button" role="button">Back</a>
		<a href="#" class="jqm-search-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-search ui-nodisc-icon ui-alt-icon ui-btn-right">Search</a>
	</div><!-- /header -->

	<div role="main" class="ui-content jqm-content">
		<p>아파트코드 : <%=hm.get("아파트코드") %></p>
		<p>주소 : <%=hm.get("주소") %></p>
<!-- 		<a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext">Back</a> -->
	</div><!-- /content -->
<%@ include file="../cmn/include/footer.jsp" %>
<%@ include file="../cmn/include/menu.jsp" %>
</div><!-- /page -->

</body>
</html>