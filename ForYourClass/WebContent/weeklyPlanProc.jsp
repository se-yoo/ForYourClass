<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">
<%
request.setCharacterEncoding("UTF-8");

String[] date=new String[7];
String[] duty=new String[7];
String[] content=new String[7];
String[] homework=new String[7];
String[] teacher=new String[7];
String result="";

BufferedReader reader=null;

try{
	String filePath = application.getRealPath("/WEB-INF/weekly.txt");
	reader=new BufferedReader(new FileReader(filePath));
	
	String csvStr="";
	String tmpStr="";
	
	do{
		tmpStr=reader.readLine();
		if(tmpStr!=null){
			csvStr+=tmpStr+"\t";
		}
	}while(tmpStr!=null);
	StringTokenizer parse=new StringTokenizer(csvStr,"\t");
	for(int i=0;i<6;i++){
		date[i]=parse.nextToken();
		duty[i]=parse.nextToken();
		content[i]=parse.nextToken();
		homework[i]=parse.nextToken();
		teacher[i]=parse.nextToken();
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}
%><center>
	<table width="70%" border="1" cellpadding="5" cellspacing="0"  style="font-size:0.8em; text-align:center;">
		<tr id="color">
			<td width="10%">일자</td>
			<td width="10%">조기청소</td>
			<td width="40%">내용</td>
			<td width="20%">과제</td>
			<td width="20%">자기주도학습감독교사</td>
		</tr>
		<tr>
			<td><%=date[0] %></td>
			<td><%=duty[0] %></td>
			<td><%=content[0] %></td>
			<td><%=homework[0] %></td>
			<td><%=teacher[0] %></td>
		</tr>
		<tr>
			<td><%=date[1] %></td>
			<td><%=duty[1] %></td>
			<td><%=content[1] %></td>
			<td><%=homework[1] %></td>
			<td><%=teacher[1] %></td>
		</tr>
		<tr>
			<td><%=date[2] %></td>
			<td><%=duty[2] %></td>
			<td><%=content[2] %></td>
			<td><%=homework[2] %></td>
			<td><%=teacher[2] %></td>
		</tr>
		<tr>
			<td><%=date[3] %></td>
			<td><%=duty[3] %></td>
			<td><%=content[3] %></td>
			<td><%=homework[3] %></td>
			<td><%=teacher[3] %></td>
		</tr>
		<tr>
			<td><%=date[4] %></td>
			<td><%=duty[4] %></td>
			<td><%=content[4] %></td>
			<td><%=homework[4] %></td>
			<td><%=teacher[4] %></td>
		</tr>
		<tr>
			<td><%=date[5] %></td>
			<td><%=duty[5] %></td>
			<td><%=content[5] %></td>
			<td><%=homework[5] %></td>
			<td><%=teacher[5] %></td>
		</tr>
	</table><br>
	<form action="weeklyUpdate.jsp"><input type="submit" value="수정하기"></form></center>
</body>
</html>