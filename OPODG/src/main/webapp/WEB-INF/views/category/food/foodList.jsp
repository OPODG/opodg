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
<script>
$(function() {
    $('#execute1').click(function(){
    	var data = {
    			id : "",
    			pw : ""
    	}
		$.ajax({
		    url : "test1.web",
		    dataType : "json",
		    type : "post",
		    data : data,
		    success: function(data) {
		        alert("성공:"+data.KEY);
		    },
		    error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"error:"+error);
		    }
		})
    })
 
});
</script>
<%@ include file="../../cmn/include/header_back.jsp" %>

	<div role="main" class="ui-content jqm-content">
		<ul data-role="listview" data-filter="true" data-filter-placeholder="Search title ">
<!-- 			<li style=""> -->
<%-- 				<div style=" background-image: url('<%=request.getContextPath()%>/img/tt-1.jpg');width:100%;height:300px" > --%>
<%-- 					<a href="<%=request.getContextPath() %>/foodDetail.web" data-ajax="false">거북곱창</a> --%>
<!-- 					<div> -->
<%-- 						<img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</li> -->
			<li>
				<div style=" background-image: url('<%=request.getContextPath()%>/img/tt-2.jpg');width:100%;height:300px;" >
					<table border="0" style="height:100%;width:100%;">
						<tr style="height:15%">
							<td style="background-color: rgba( 255, 255, 255, 0.6 );text-align:center">
								<a href="<%=request.getContextPath() %>/foodDetail.web" data-ajax="false" style="text-decoration:none;color: black;font-size:18pt">거북곱창</a>
							</td>
						</tr>
						<tr style="height:75%">
							<td>
							</td>
						</tr>
						<tr style="">
							<td style="margin:0 auto;margin-left:auto;margin-right:auto;align:right;text-align:right;background-color: rgba( 255, 255, 255, 0.5 );">
								<img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px"><img src="<%=request.getContextPath()%>/img/starRating.png" style="width:25px;height:25px">
							</td>
						</tr>
					</table>
				</div>
			</li>
			<li><a href="#">박가부대찌게</a></li>
			<li><a href="#">쌈촌</a></li>
			<li><a href="#">암소 한마리</a></li>
			<li><a href="#">흑돈가</a></li>
			<li><a href="#" data-rel="close" class="ui-btn ui-shadow ui-corner-all ui-btn-a ui-mini"  id="execute1">login</a></li>
		</ul>
		
	</div><!-- /content -->
<%@ include file="../../cmn/include/footer.jsp" %>
<%-- <%@ include file="cmn/include/menu.jsp" %> --%>
<%@ include file="../../login/login.jsp" %>
</div><!-- /page -->
</body>
</html>
