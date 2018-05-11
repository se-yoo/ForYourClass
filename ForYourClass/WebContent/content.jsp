<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">
<img src="resources/main_1.jpg" id=mainImage style="width:90%;">
<script>
var myImage=document.getElementById("mainImage");
var imageArray=["resources/main_2.JPG","resources/main_3.JPG","resources/main_1.jpg"];
var imageIndex=0;

function changeImage(){
	myImage.setAttribute("src",imageArray[imageIndex]);
	imageIndex++;
	if(imageIndex>=imageArray.length){
		imageIndex=0;
	}
}
setInterval(changeImage,4000);
</script>

<h4>여러분의 학급 정보관리를 한 곳에서!</h4><br>
공지, 주간일정, 시간표 등을 관리해보세요<br>
[정보관리]에서 학급 인원 정보를 입력하면 다양한 편성기능을 이용할 수 있습니다<br>
</body>
</html>