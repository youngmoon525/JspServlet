<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 출력1</h1>
	<table border="1px solid black;">
		<%for(int i = 2 ; i<=9; i++){ %>
		<tr>
			<%for(int j = 1 ; j<=9; j++){ %>
			<td><%=i + " * " + j + " = " + (i*j) %></td>
			<%} %>
		</tr>
		<%} %>
	</table>

	<table border="1px solid black;">
		<%for(int i = 2 ; i<=9; i++){ %>
		<tr>
			<%for(int j = 1 ; j<=9; j++){ %>
			<td><%=j + " * " + i + " = " + (i*j) %></td>
			<%} %>
		</tr>
		<%} %>
	</table>
	<table border="1px solid black;">
		<%for(int i = 2 ; i<=9; i++){ 
			if(i%2==1){%>
		<tr style="background: red;">
		<%}else{ %>
		<tr style="background: blue;">
		<%} %>
			<%for(int j = 1 ; j<=9; j++){ %>
			<td><%=i + " * " + j + " = " + (i*j) %></td>
			<%} %>
		</tr>
		<%} %>
	</table>
</body>
</html>