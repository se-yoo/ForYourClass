<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학급 페이지</title>
<style>
	#table{
		float:left;
		height:1300px;
		border:0px;
	}
	#menu{
		width:15%;
		vertical-align:top; 
		font-size:1em; 
		text-align:left;
		background-color:#96de24;
		height:98%;
		padding-left:5%;
		position:fixed;
		right:5px;
	}
	input[type=submit]{
		background-color:#96de24;
		color:white;
		border:0;
		padding:5px;
	}
	input[type=button]{
		background-color:#96de24;
		color:white;
		border:0;
		padding:5px;
	}
	a{
		text-decoration:none;
		color:black;
	}
	a:hover{
		text-decoration:none;
		color:#96de24;
	}
	body, button, input, select, td, textarea, th {
    	line-height: 1.6;
    	font-family: NanumGothic, "Malgun Gothic", dotum, 돋움, sans-serif;
    	color:#8C8C8C;
	}
	table{
		border-collapse:collapse;
		border:1px solid #D5D5D5;
	}
	#color{
		background-color:#acdb77;
	}
</style>
</head>
<body>
<%
	String submenu=request.getParameter("SUBMENU");
	String contentpage=request.getParameter("CONTENTPAGE");
	int row=2;
	if(submenu!="")row=3;
%>
<table id="table" width="80%" border="0px" cellpadding="2" cellspacing="0">
<tr height="15%">
	<td style="text-align:center;">
		<a href="main.jsp"><img src="resources/logo.jpg" width="100%"></a>
	</td>
</tr>
<% 	if(row==3){%>
	<tr height="50px" style="text-align:center;"><td>
		<jsp:include page="<%= submenu %>"></jsp:include>
	</td></tr>
	<%}
%>
<tr height="70%" style="vertical-align:top; ">
	<td style="padding-top:30px">
		<jsp:include page="<%= contentpage %>"></jsp:include>
	</td>
</tr>
<tr height="10%">
	<td colspan="2" style="text-align:center;">
		<jsp:include page="bottom.jsp" flush="false"/>
	</td>
</tr>
</table>
<nav id="menu">
<br><br><br>
	<jsp:include page="left.jsp" flush="false"/>
</nav>
</body>
</html>