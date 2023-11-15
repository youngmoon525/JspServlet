<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<% String key =(String) request.getAttribute("key");
	  ArrayList<String> list =(ArrayList<String>) request.getAttribute("list");
	  for(int i=0 ; i<list.size(); i++){
	%>
		<%=list.get(i) %>
	<%} %>
	<h1>로그인 성공 <%=key %> </h1>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>