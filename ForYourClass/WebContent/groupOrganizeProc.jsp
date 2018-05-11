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
<h3>조 편성하기</h3>
<form action="groupMaker.jsp">
	조의 개수 : <input type="text" name="groupNum" placeholder="숫자 입력(2~반인원까지)" required>
	<input type="submit" value="조 편성 시작"> 
</form>
<br><br>

<%
	request.setCharacterEncoding("UTF-8");
	if(request.getParameter("RESULT")!=null&&!(request.getParameter("RESULT").equals(""))){
		String r=request.getParameter("RESULT");
		out.println("<center><div style='width:50%;padding:10px;border:2px solid #96de24;'>");
		out.println(r);
		out.println("</div></center>");
	}
%>
<br>
</body>
</html>