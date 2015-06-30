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
	<link rel="stylesheet" href="jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="jquery/_assets/css/jqm-demos.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="jquery/js/jquery.js"></script>
	<script src="jquery/_assets/js/index.js"></script>
	<script src="jquery/js/jquery.mobile-1.4.5.min.js"></script>
	<script src="../js/board.js"></script>
</head>
<body>
<div data-role="page" class="jqm-demos jqm-home">

	<div data-role="header" class="jqm-header">
		<h2>OPODG</h2>
		<p>Welcome</p>
		<a href="#" class="jqm-navmenu-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-bars ui-nodisc-icon ui-alt-icon ui-btn-left">Menu</a>
		<a href="#" class="jqm-search-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-search ui-nodisc-icon ui-alt-icon ui-btn-right">Search</a>
	</div><!-- /header -->

	<div role="main" class="ui-content jqm-content">

		<h1>당황하지마라</h1>
		<p><strong>환영합니다. <br/>동해물과 백두산이 마르고 닳도록 하느님이 보우하사 길이 보전하세</strong></p>
        <div class="ui-grid-a ui-responsive">
        	<div class="ui-block-a">
        		<div class="jqm-block-content">
        			<h3>Item 01</h3>

        			<p><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_INTRODUCTION %>" data-transition="slide">Introduction</a></p>
        			<p><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_NOTIFICATION_LIST %>" data-transition="slide">Notification</a></p>
        			<p><a href="<%=request.getContextPath() %>/<%=WebAppConstant.URL_MAP %>" data-ajax="false">map</a></p>
<!--         			<p><a href="loader/" data-ajax="false">Consumer Center</a></p> -->
        		</div>
        	</div>
        	<div class="ui-block-b">
        		<div class="jqm-block-content">
        			<h3>Item 02</h3>

        			<p><a href="theme-default/" data-ajax="false">Community</a></p>
        			
        		</div>
        	</div>        	
        </div>

	</div><!-- /content -->
<%@ include file="cmn/include/footer.jsp" %>
<%@ include file="cmn/include/menu.jsp" %>
</div><!-- /page -->
</body>
</html>
