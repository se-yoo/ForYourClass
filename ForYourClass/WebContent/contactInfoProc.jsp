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

String[] name=new String[20];
String[] email=new String[20];
String[] tel=new String[20];
String result="";
String str="";
int stuCnt=0;

BufferedReader reader=null;

try{
	String filePath = application.getRealPath("/WEB-INF/studentCnt.txt");
	reader=new BufferedReader(new FileReader(filePath));
	
	while(true){
		str=reader.readLine();
		if(str==null) break;
		out.println("");
		stuCnt=Integer.parseInt(str);
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}

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
	for(int i=0;i<stuCnt;i++){
		name[i]=parse.nextToken();
		email[i]=parse.nextToken();
		tel[i]=parse.nextToken();
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}
%><center>
	<table width="70%" border="1"  cellpadding="5" cellspacing="0" style="text-align:center;">
		<tr id="color">
			<td>이름</td>
			<td>이메일</td>
			<td>전화번호</td>
		</tr>
		<%
			for(int i=0;i<19;i++){
				out.println("<tr><td>"+name[i]+"</td><td>"+email[i]+"</td><td>"+tel[i]+"</td></tr>");
			}
		%>
	</table>
	</center><br>
</body>
</html>