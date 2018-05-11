<%@page import="java.io.PrintWriter"%>
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
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String noticeCategory=request.getParameter("notice");

	String result=null;
	
	String filename = title+".txt";
	
	PrintWriter writer=null;
	
	try{
		String filePath = application.getRealPath("/WEB-INF/"+noticeCategory+"/"+filename);
		writer=new PrintWriter(filePath);
		writer.println(content);
		
		writer.flush();
	}catch(Exception e){
		out.println("오류 발생");
	}
	
%>
	<meta http-equiv='refresh' content='0; url=<%=noticeCategory%>.jsp'>

</body>
</html>