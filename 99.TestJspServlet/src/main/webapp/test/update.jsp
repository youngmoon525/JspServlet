<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${id}</p>
	<p>${pw}</p>
	<a href="delete.te?deleteid=100">delete요청</a>
	<!-- delete.te로 요청을 함 <a>태그 이용해서.
	요청시 get방식으로 deleteid라는 이름으로 값을 100을 전송함.
	 -->
</body>
</html>