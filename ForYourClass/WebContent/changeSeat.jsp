<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String result=request.getParameter("RESULT");
%>
    
<jsp:forward page="templateTest.jsp">
	<jsp:param name="CONTENTPAGE" value="changeSeatProc.jsp?RESULT=<%= result %>"/>
	<jsp:param name="SUBMENU" value="organizeMenu.jsp"/>
</jsp:forward>