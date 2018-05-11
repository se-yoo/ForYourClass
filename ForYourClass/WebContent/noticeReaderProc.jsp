<%@page import="java.io.File"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	String filename = request.getParameter("FILE_NAME");
	String noticeType=request.getParameter("TYPE");
%>

<script>
	function deleteNotice(){
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			location.replace("noticeDelete.jsp?TYPE=<%=noticeType %>&NAME=<%=filename %>");
		}else{   //취소
		    return;
		}
	}
</script>
<div style="padding-left:20%;">
<h3><%= filename.substring(0,filename.length()-4) %></h3>

<%
	BufferedReader reader=null;

	try{
		String filePath = application.getRealPath("/WEB-INF/"+noticeType+filename);
		reader=new BufferedReader(new FileReader(filePath));
		
		while(true){
			String str=reader.readLine();
			if(str==null) break;
			out.println(str+"<br>");
		}
		
	}catch(Exception e){
		out.println("파일을 읽을 수 없습니다.");
	}
%>
<br><br>
<a href="noticeUpdate.jsp?TYPE=<%=noticeType %>&NAME=<%=filename %>"><input type="button" value="수정하기"></a></div>
</body>
</html>