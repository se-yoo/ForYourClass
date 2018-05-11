<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">
<h3>공지 작성하기</h3>
<form action="write.jsp" method="post">
	제목 <input type="text" size="32" name="title"><br><br>
	<textarea cols="40" rows="20" name="content" placeholder="내용"></textarea><br><br>
	분류 <input type="radio" name="notice" checked="checked" value="schoolNotice">학교공지 <input type="radio" name="notice" value="jobNotice">취업공지<br><br>
	<input type="submit" value="작성완료">
</form>
</body>
</html>