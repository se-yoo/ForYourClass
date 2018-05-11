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
<body style="text-align:center;">
<%
	BufferedReader reader=null;
	String studentInfo="";
	String stuCnt="";
	String timeTable="";
	String str="";

	try{
		String filePath = application.getRealPath("/WEB-INF/studentCnt.txt");
		String filePath2 = application.getRealPath("/WEB-INF/classInfo.txt");
		String filePath3 = application.getRealPath("/WEB-INF/timeTable.txt");
		reader=new BufferedReader(new FileReader(filePath));
		
		while(true){
			str=reader.readLine();
			if(str==null) break;
			stuCnt=str;
		}
		
		reader=new BufferedReader(new FileReader(filePath2));
		while(true){
			str=reader.readLine();
			if(str==null) break;
			studentInfo+=(str+"\n");
		}
		
		reader=new BufferedReader(new FileReader(filePath3));
		while(true){
			str=reader.readLine();
			if(str==null) break;
			timeTable+=(str+"\n");
		}
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다.");
	}
%>
<form action="updateInfo.jsp" method="post">
	반인원<br> <input type="text" size="50" name="stuCnt" value="<%=stuCnt%>"><br><br>
	학생정보<br><textarea cols="60" rows="20" name="stuInfo"><%= studentInfo %></textarea><br><br>
	시간표(tab을 이용해 과목사이를 띄워주세요)<br><textarea cols="60" rows="10" name="timeTable"><%= timeTable %></textarea><br><br>
	<input type="submit" value="수정하기">
</form><br><br>
</body>
</html>