<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	errorPage="Ex02_Error.jsp"

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>에러 페이지 메인</h1>
	<!-- 자바코드로 실행 후 오류가 나게 해보기.   -->
	<%  
		int num = 10/0;
	//String str = null;
		//int length = str.length();
		//NullPointerException 
		//NumberFormatException -> "a"-> 숫자로 바꾸려고함.
		//ArrayOutBoundException -> 배열 크기보다 큰 index에 접근
		
	%>
</body>
</html>