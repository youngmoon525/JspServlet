<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>신규 등록 화면</h1>
	<!-- form: 사용자에게 입력 받은 내용을 제출 (input) -->
	<form action="insert.te">
		<input type="text" name="id" placeholder="아이디를 입력"/> 
		<input type="text" name="pw" placeholder="패스워드를 입력"/>
		<input type="submit" value="전송" />
	</form>
</body>
</html>