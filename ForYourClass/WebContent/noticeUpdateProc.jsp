<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String noticeType=request.getParameter("TYPE");
	String fileName=request.getParameter("NAME");
	String content="";
%>

<%
	BufferedReader reader=null;

	try{
		String filePath = application.getRealPath("/WEB-INF/"+noticeType+fileName);
		reader=new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str=reader.readLine();
			if(str==null) break;
			content+=(str+"<br>");
		}
		
	}catch(Exception e){
		out.println(noticeType+fileName+"파일을 읽을 수 없습니다.");
	}
%><center>
<form action="write.jsp?title=<%= fileName.substring(0,fileName.length()-4) %>&notice=<%=noticeType.substring(0,noticeType.length()-1) %>" method="post">
	제목 <input type="text" size="32" name="title" disabled value="<%= fileName.substring(0,fileName.length()-4) %>"><br><br>
	<textarea cols="40" rows="20" name="content" placeholder="내용"><%=content %></textarea><br><br>
	<input type="submit" value="작성완료">
</form></center>
</body>
</html>