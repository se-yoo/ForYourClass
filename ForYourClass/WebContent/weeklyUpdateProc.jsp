<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">
<%
request.setCharacterEncoding("UTF-8");

String[] date=new String[6];
String[] duty=new String[6];
String[] content=new String[6];
String[] homework=new String[6];
String[] teacher=new String[6];
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
%>
	<p>*줄바꿈시에 enter키 대신 &lt;br&gt;이라고 써주세요!</p>
	<center>
	<form action="update.jsp" method="post">
	<table width="70%" border="1" cellpadding="5" cellspacing="0"  style="font-size:0.8em;text-align:center;">
		<tr id="color">
			<td width="10%">일자</td>
			<td width="10%">조기청소</td>
			<td width="40%">내용</td>
			<td width="20%">과제</td>
			<td width="20%">자기주도학습감독교사</td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_0"><%=date[0] %></textarea></td>
			<td><textarea cols="7" name="duty_0"><%=duty[0] %></textarea></td>
			<td><textarea cols="28" name="content_0"><%=content[0] %></textarea></td>
			<td><textarea cols="14" name="homework_0"><%=homework[0] %></textarea></td>
			<td><textarea cols="14" name="teacher_0"><%=teacher[0] %></textarea></td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_1"><%=date[1] %></textarea></td>
			<td><textarea cols="7" name="duty_1"><%=duty[1] %></textarea></td>
			<td><textarea cols="28" name="content_1"><%=content[1] %></textarea></td>
			<td><textarea cols="14" name="homework_1"><%=homework[1] %></textarea></td>
			<td><textarea cols="14" name="teacher_1"><%=teacher[1] %></textarea></td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_2"><%=date[2] %></textarea></td>
			<td><textarea cols="7" name="duty_2"><%=duty[2] %></textarea></td>
			<td><textarea cols="28" name="content_2"><%=content[2] %></textarea></td>
			<td><textarea cols="14" name="homework_2"><%=homework[2] %></textarea></td>
			<td><textarea cols="14" name="teacher_2"><%=teacher[2] %></textarea></td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_3"><%=date[3] %></textarea></td>
			<td><textarea cols="7" name="duty_3"><%=duty[3] %></textarea></td>
			<td><textarea cols="28" name="content_3"><%=content[3] %></textarea></td>
			<td><textarea cols="14" name="homework_3"><%=homework[3] %></textarea></td>
			<td><textarea cols="14" name="teacher_3"><%=teacher[3] %></textarea></td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_4"><%=date[4] %></textarea></td>
			<td><textarea cols="7" name="duty_4"><%=duty[4] %></textarea></td>
			<td><textarea cols="28" name="content_4"><%=content[4] %></textarea></td>
			<td><textarea cols="14" name="homework_4"><%=homework[4] %></textarea></td>
			<td><textarea cols="14" name="teacher_4"><%=teacher[4] %></textarea></td>
		</tr>
		<tr>
			<td><textarea cols="7" name="date_5"><%=date[5] %></textarea></td>
			<td><textarea cols="7" name="duty_5"><%=duty[5] %></textarea></td>
			<td><textarea cols="28" name="content_5"><%=content[5] %></textarea></td>
			<td><textarea cols="14" name="homework_5"><%=homework[5] %></textarea></td>
			<td><textarea cols="14" name="teacher_5"><%=teacher[5] %></textarea></td>
		</tr>
	</table><br><input type="submit" value="수정하기"></form></center>
</body>
</html>