<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Mybatis</h1>
	<form action="insert.mytbl">
		<input  type="text" name="col1" />
		<input  type="text" name="col2" />
		<input  type="text" name="col3" />
		<input type="submit" value="추가"/>
	</form>
	<form action="update.mytbl">
		<input  type="text" name="col1" />
		<input  type="text" name="col2" />
		<input  type="text" name="col3" />
		<input type="submit" value="수정"/>
	</form>
	<form action="delete.mytbl">
		<input  type="text" name="col1" />
		<input type="submit" value="삭제"/>
	</form>
	<table border="1px solid black;" style="width: 80%; margin: 0 auto;">
		<thead>
			<tr>
				<td>col1</td>
				<td>col2</td>
				<td>col3</td>
			</tr>
		</thead>
	
	
	<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.col1}</td>
				<td>${vo.col2}</td>
				<td>${vo.col3}</td>
			</tr>
	</c:forEach>
	</table>
	
	<script type="text/javascript">
		function test() {
			
		}
		
	</script>
</body>
</html>