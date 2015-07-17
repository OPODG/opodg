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
	<h1>거북곱창</h1>

		<p>서울특별시 서초구 서초동 1565-8번지</p>
		<h2>Tel: (02)586-0032</h2>
<div data-role="tabs" id="tabs" data-position="fixed" >
  <div data-role="navbar">
    <ul>
		<li><a href="#one" data-ajax="false">상세</a></li>
		<li><a href="#two" data-ajax="false">동영상</a></li>
		<li><a href="#three" data-ajax="false">리뷰</a></li>
	</ul>
  </div>
  <div id="one" class="ui-body-d ui-content">
    <h4>[돼니지의 기웃기웃 맛집]. 서초동 맛집_거북곱창 : 교대역 원조 곱창 맛집♩. 교대앞에서 제일 유명한 맛집, 먹거리하면 곱창을 빼먹을 수가 없겠죠~!</h4>
  </div>
  <div id="two">
	<iframe width="100%" height="500px" src="https://www.youtube.com/embed/CZnn45egbXM" frameborder="0" allowfullscreen></iframe>
  </div>
  <div id="three">
    <ul data-role="listview" data-inset="true">
		<li><a href="#">맛남</a></li>
		<li><a href="#">사람이 너무 많음</a></li>
		<li><a href="#">위생이 부적합하다!!</a></li>
		<li><a href="#">그건 모르겠고~</a></li>
		<li><a href="#">여기 어디 나는 누구?!</a></li>
	</ul>
  </div>
</div>
	</div><!-- /content -->
<%@ include file="../../cmn/include/footer.jsp" %>
<%-- <%@ include file="cmn/include/menu.jsp" %> --%>
<%@ include file="../../login/login.jsp" %>
</div><!-- /page -->
</body>
</html>
