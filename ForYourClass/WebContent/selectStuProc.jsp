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
<h3>발표뽑기</h3>
<form action="selectRandom.jsp">
	<input type="submit" value="발표뽑기"> 
</form>
<br><br>
<%
	request.setCharacterEncoding("UTF-8");
	if(request.getParameter("RESULT")!=null&&!(request.getParameter("RESULT").equals(""))){
		String r=request.getParameter("RESULT");
		out.println("<center><div style='width:20%;padding:6px;border:5px solid #96de24;'>");
		out.println("<h3>"+r+"</h3>");
		out.println("</div></center>");
	}
%>
<br>
</body>
</html>