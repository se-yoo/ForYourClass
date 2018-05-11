<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.StringTokenizer"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String[] name=new String[20];
	String[] clean={"교실쓸기","교실쓸기","교실대걸레","교실대걸레","쓰레기통","쓰레기통","창틀 및 교사용책상,사물함정리","운동장쪽유리","운동장쪽유리","복도쪽유리","복도쪽유리","복도쓸기","복도대걸레",
					"개수실","화장실복도(쓸기)","화장실복도(닦기)","아트스튜디오앞(쓸기)","아트스튜디오앞(닦기)","아트스튜디오앞(닦기)"};
	int stuCnt=0;
	String str="";
	String result="";
	
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
	
	//학생 얻어오는 부분
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
	
	for(int i=0;i<100;i++){
		int randNum1=(int)(Math.random()*stuCnt);
		int randNum2=(int)(Math.random()*stuCnt);
		String tmp=name[randNum1];
		name[randNum1]=name[randNum2];
		name[randNum2]=tmp;
	}
	
	result+="<table border='1' cellpadding='10' cellspacing='0' style='text-align:center'>";
	for(int i=0;i<stuCnt;i++){
		result+="<tr>";
		result+="<td width='50%'>"+clean[i]+"</td>";
		result+="<td width='50%'>"+name[i]+"</td>";
		result+="</tr>";
	}
	result+="</table>";
	
	String r=java.net.URLEncoder.encode(result);
	
	response.setContentType("text/html; charset=utf-8");
	response.sendRedirect("changeClean.jsp?RESULT="+r);
%>
</body>
</html>