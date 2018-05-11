<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String[] name=new String[19];
String result="";

BufferedReader reader=null;

try{
	String filePath = application.getRealPath("/WEB-INF/classInfo.txt");
	reader=new BufferedReader(new FileReader(filePath));
	String csvStr="";
	String tmpStr="";
	
	do{
		tmpStr=reader.readLine();
		if(tmpStr!=null){
			csvStr+=tmpStr+" ";
		}
	}while(tmpStr!=null);
	StringTokenizer parse=new StringTokenizer(csvStr," ");
	for(int i=0;i<19;i++){
		name[i]=parse.nextToken();
		parse.nextToken();
		parse.nextToken();
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}
result=name[(int)(Math.random()*19)];

String r=java.net.URLEncoder.encode(result);

response.setContentType("text/html; charset=utf-8");
response.sendRedirect("selectStu.jsp?RESULT="+r);
%>
</body>
</html>