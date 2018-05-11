<%@page import="java.io.BufferedWriter"%>
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
	String stuCnt=request.getParameter("stuCnt");
	String stuInfo=request.getParameter("stuInfo");
	String timeTable=request.getParameter("timeTable");
	
	PrintWriter writer=null;
	try{
		String filePath = application.getRealPath("/WEB-INF/studentCnt.txt");
		String filePath2 = application.getRealPath("/WEB-INF/classInfo.txt");
		String filePath3 = application.getRealPath("/WEB-INF/timeTable.txt");
		writer=new PrintWriter(filePath);
		BufferedWriter bw=new BufferedWriter(writer);
		
		bw.write(stuCnt);
		bw.close();
		
		writer=new PrintWriter(filePath2);
		bw=new BufferedWriter(writer);
		
		bw.write(stuInfo);
		bw.close();
		
		writer=new PrintWriter(filePath3);
		bw=new BufferedWriter(writer);
		
		bw.write(timeTable);
		bw.close();
		
		writer.flush();
	}catch(Exception e){
		out.println("오류 발생");
	}
	
%>

<meta http-equiv='refresh' content='0; url=classInfo.jsp'>
</body>
</html>