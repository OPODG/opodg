<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript">
	function openMenuLayer(acctStatus){
		alert("123");
		var f = document.getElementById('form1');
		alert(f.a1.length);
		alert(f.a1.size);
// 		if("1"!=acctStatus){
// 			alert("11");
// 		}
// 		if("9"!=acctStatus){
// 			alert("1");
// 		}
// 		if("6"!=acctStatus){
// 			alert("2");
// 		}
// 		if("G"!=acctStatus){
// 			alert("3");
// 		}
// 		if("H"!=acctStatus){
// 			alert("4");
// 		}
// 		if("9"!=acctStatus && "6"!=acctStatus && "G"!=acctStatus && "H"!=acctStatus){
// 			alert("true");
// 		}else{
// 			alert("false");
// 		}
	}
	function click(){
		alert("123");
		//var f = document.getElementById('form1');
		//alert(f.a1.length);
	}
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. ${test}</P><br/>
<%=request.getAttribute("test") %>
<%
	ArrayList arr = (ArrayList) request.getAttribute("arr");
%>
<%=arr.size() %>

count=<%=request.getAttribute("count") %>
<a href="#none" onclick="openMenuLayer('1')">123</a>
<form id='form1' name='form1' method='post' action=''>
<input type="text" id="a1" name="a1" value=""/>
<input type="text" id="a2" name="a2" value=""/>
<input type="text" id="a3" name="a3" value=""/>
<input type="text" id="a4" name="a4" value=""/>
<input type="text" id="a5" name="a5" value=""/>
<a href="#none" onclick="click()">123</a>
</form>
</body>
</html>
