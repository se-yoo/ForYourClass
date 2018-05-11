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

String[][] timetable=new String[5][7];
String result="";

BufferedReader reader=null;

try{
	String filePath = application.getRealPath("/WEB-INF/timeTable.txt");
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
	for(int i=0;i<7;i++){
		for(int j=0;j<5;j++){
			timetable[j][i]=parse.nextToken();
		}
	}
	
}catch(Exception e){
	out.println("파일을 읽을 수 없습니다.");
}
%><center>
	<table width="70%" border="1"  cellpadding="5" cellspacing="0" style="text-align:center;">
		<tr id="color">
			<td></td>
			<td width="18%">월</td>
			<td width="18%">화</td>
			<td width="18%">수</td>
			<td width="18%">목</td>
			<td width="18%">금</td>
		</tr>
		<%
			for(int i=0;i<7;i++){
				out.println("<tr><td>"+(i+1)+"</td>");
				for(int j=0;j<5;j++){
					out.println("<td>"+timetable[j][i]+"</td>");
				}
				out.println("</tr>");
			}
		%>
	</table>
	</center><br>
</body>
</html>