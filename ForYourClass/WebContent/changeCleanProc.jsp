<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">
<h3>청소바꾸기</h3>
<form action="change2.jsp">
	<input type="submit" value="청소바꾸기"> 
</form>
<br>
<%
	request.setCharacterEncoding("UTF-8");
	if(request.getParameter("RESULT")!=null){
		String r=request.getParameter("RESULT");
		out.println("<center>"+r+"</center>");
	}
%>
<br>
</body>
</html>