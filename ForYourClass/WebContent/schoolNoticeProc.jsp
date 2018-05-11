<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String dirPath = application.getRealPath("/WEB-INF/schoolNotice");
	//out.println(dirPath);
	File dir = new File(dirPath);
	String filenames[] = dir.list();
	
	/*
	for(int i = 0;i < filenames.length;i++){
		out.println(filenames[i]);
		out.println("<br>");
	}
	*/
%><center>
<table width="60%" border="1" cellpadding="2" cellspacing="0">
	<tr>
	<td width="10%"></td>
	<td width="90%" style="text-align:center">제목</td>
	</tr>
<%
	int i=1;
	for(String filename: filenames){ %>
	<tr><td style="text-align:center"><%=i++ %></td>
		<td style="padding-left:10px"><a href="noticeReader.jsp?FILE_NAME=<%=filename%>&TYPE=schoolNotice/">
		<%= filename.substring(0,filename.length()-4) %></a></td></tr>
<%	}
%>
</table></center>
</body>
</html>