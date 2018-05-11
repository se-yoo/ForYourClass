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
	String[] date=new String[6];
	String[] duty=new String[6];
	String[] content=new String[6];
	String[] homework=new String[6];
	String[] teacher=new String[6];
	String saveContent="";

	PrintWriter writer=null;
	
	for(int i=0;i<6;i++){
		date[i]=request.getParameter("date_"+i);
		duty[i]=request.getParameter("duty_"+i);
		content[i]=request.getParameter("content_"+i);
		homework[i]=request.getParameter("homework_"+i);
		teacher[i]=request.getParameter("teacher_"+i);
	}
	
	try{
		String filePath = application.getRealPath("/WEB-INF/weekly.txt");
		writer=new PrintWriter(filePath);
		BufferedWriter bw=new BufferedWriter(writer);
		
		for(int i=0;i<6;i++){
			saveContent=date[i]+"\t"+duty[i]+"\t"+content[i]+"\t"+homework[i]+"\t"+teacher[i];
			bw.write(saveContent);
			bw.newLine();
		}
		
		bw.close();
		writer.flush();
	}catch(Exception e){
		out.println("오류 발생");
	}
	
%>

<meta http-equiv='refresh' content='0; url=weeklyPlan.jsp'>
</body>
</html>