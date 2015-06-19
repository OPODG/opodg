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
	<title>Multi-page template</title>
	<link rel="stylesheet" href="../jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="../jquery/_assets/css/jqm-demos.css">
	<link rel="shortcut icon" href="../jquery/favicon.ico">
	<script src="../jquery/js/jquery.js"></script>
	<script src="../jquery/_assets/js/index.js"></script>
	<script src="../jquery/js/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>

<div data-role="page">

	<div data-role="header">
		<h1>Single page</h1>
		<a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext">Back</a>
        <a href="#" onclick="window.location.reload()" data-icon="back" data-iconpos="notext">Refresh</a>
	</div><!-- /header -->

	<div role="main" class="ui-content">
		<p><%=request.getAttribute("id") %></p>
	</div><!-- /content -->

	<div data-role="footer">
		<h4>Footer content</h4>
	</div><!-- /footer -->

</div><!-- /page -->

</body>
</html>