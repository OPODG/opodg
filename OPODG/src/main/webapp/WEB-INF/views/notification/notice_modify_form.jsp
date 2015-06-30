<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.*"%>
<%@ page import="util.*" %>
<%@ page import="util.constants.*"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OPODG - Notification</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/jquery/_assets/css/jqm-demos.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="<%=request.getContextPath() %>/jquery/js/jquery.js"></script>
	<script src="<%=request.getContextPath() %>/jquery/_assets/js/index.js"></script>
	<script src="<%=request.getContextPath() %>/jquery/js/jquery.mobile-1.4.5.min.js"></script>
</head>

<body>
<% 
	HashMap hm = (HashMap)request.getAttribute("hm");
%>
<div data-role="page" class="jqm-demos jqm-home">
	<script>
		function goModify(){
			var f = document.modify;
			f.submit();
		}
	</script>
	<div data-role="header" class="jqm-header">
		<h2>OPODG > List > Detail</h2>
		<a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext" class="ui-link ui-btn-left ui-btn ui-icon-carat-l ui-btn-icon-notext ui-shadow ui-corner-all" data-role="button" role="button">Back</a>
		<a href="#" class="jqm-search-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-search ui-nodisc-icon ui-alt-icon ui-btn-right">Search</a>
	</div><!-- /header -->

	<div role="main" class="ui-content jqm-content">
		<form id="modify" name="modify" method="POST" action="<%=request.getContextPath() %>/<%=WebAppConstant.URL_NOTIFICATION_MODIFY %>">
			 <input type="hidden" data-mini="true" name="seq" id="seq" value="<%=hm.get("seq") %>">
		     <label for="text-4">ID:</label><input type="text" data-mini="true" name="id" id="id" value="<%=hm.get("reg_id") %>" disabled="disabled">
		     <label for="text-5">Title:</label><input type="text" data-clear-btn="true" data-mini="true" name="title" id="title" value="<%=hm.get("title") %>">
		    <label for="textarea-4">Contents:</label><textarea data-mini="true" cols="40" rows="80" name="contents" id="contents"><%=hm.get("content") %></textarea>
		</form>
		<a href="#" class="ui-btn ui-btn-inline" data-rel="back" data-icon="carat-l" data-iconpos="notext">Back</a>
		<a href="#" class="ui-btn ui-btn-inline" onclick="goModify();return false;" data-transition="slide">MODIFY</a>
	</div><!-- /content -->
<%@ include file="../cmn/include/footer.jsp" %>
<%@ include file="../cmn/include/menu.jsp" %>
</div><!-- /page -->

</body>
</html>