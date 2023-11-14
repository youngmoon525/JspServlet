<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>현재 알수없는 오류가 발생했습니다. 또는 비정상적인 접근 입니다.</h1>
	<h2>개발자가 빠르게 수정중이오니 양해 부탁드립니다. 최대한 빠르게 대응 하겠습니다.</h2>
	<h3><%=exception.getMessage() %></h3>
	
</body>
</html>