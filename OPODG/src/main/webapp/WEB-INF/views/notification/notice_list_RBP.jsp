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
	<script src="<%=request.getContextPath() %>/js/board.js"></script>
</head>
<body>
<div data-role="page" class="jqm-demos jqm-home">
<script>
function goDetail(code){
	var f = document.detail_form;
	document.getElementById("code").value=code;
	f.submit();
}
</script>
<form id="detail_form" name="detail_form" method="POST" action="/detail1.web">
	<input type="hidden" id="page" name="page" value="detail">
	<input type="hidden" id="code" name="code" value=""/>
</form>
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
        		int seq = (Integer)hm.get("seq") ;
        %>
				<li><a href="<%=WebAppConstant.URL_NOTIFICATION_DETAIL %>?page=detail&pageNo=<%=request.getAttribute("pageNo") %>&code=<%=seq %>" data-transition="slide"><%=hm.get("title") %></a></li> 
<%-- 				onclick="goDetail('<%=hm.get("아파트코드") %>');return false;" --%>
		       <%
        	}
        %>
			</ul>
		</div><!--/demo-html -->
		<div class=" ">
		<% 
			int cnt = (Integer)request.getAttribute("count"); 
			int totalPage = 0;
			int currentPage= Integer.parseInt((String)request.getAttribute("currentPage"));
			totalPage = cnt/10;
			if(cnt%10>0){
				totalPage ++;
			}
			
		%>
		    <fieldset data-role="controlgroup" data-type="horizontal" data-mini="true">
		        <a href="#" class="ui-shadow ui-btn ui-corner-all ui-icon-arrow-l ui-btn-icon-left">&nbsp;</a>
		        <select name="select-v-5e" id="select-v-5e">
		<%for(int i = currentPage ;i<totalPage;i++){ %>
		            <option value="<%=i%>">i</option>
		<%} %>		
		        </select>
		        <a href="#" class="ui-shadow ui-btn ui-corner-all ui-icon-arrow-r ui-btn-icon-right">&nbsp;</a>
		    </fieldset>
			<a href="<%=WebAppConstant.URL_NOTIFICATION_INSERT_FORM %>" class="ui-btn ui-btn-inline" data-transition="slide"  data-ajax="false">INSERT</a>
		</div>
<div class="ui-field-contain">

</div>
	</div><!-- /content -->
<%@ include file="../cmn/include/footer.jsp" %>
<%@ include file="../cmn/include/menu.jsp" %>
</div><!-- /page -->
</body>
</html>
