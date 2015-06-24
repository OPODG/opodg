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
<div data-role="page" class="jqm-demos jqm-home">

	<div data-role="header" class="jqm-header">
		<h2>OPODG > List</h2>
		<a href="#" class="jqm-navmenu-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-bars ui-nodisc-icon ui-alt-icon ui-btn-left">Menu</a>
		<a href="#" class="jqm-search-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-search ui-nodisc-icon ui-alt-icon ui-btn-right">Search</a>
	</div><!-- /header -->

	<div role="main" class="ui-content jqm-content">
		<div>
			<ul data-role="listview" data-count-theme="b" data-inset="true">
			        <% 
    	ArrayList arr = (ArrayList)request.getAttribute("arr");
        	for(int i=0;i<arr.size();i++){
        		HashMap hm = (HashMap)arr.get(i);
        %>
				<li><a href="detail.web?page=detail&code=<%=hm.get("아파트코드") %>" data-transition="slide"><%=hm.get("아파트명") %></a></li>
		       <%
        	}
        %>
			</ul>
		</div><!--/demo-html -->
	</div><!-- /content -->
<%@ include file="../cmn/include/footer.jsp" %>
<%@ include file="../cmn/include/menu.jsp" %>
</div><!-- /page -->
</body>
</html>
