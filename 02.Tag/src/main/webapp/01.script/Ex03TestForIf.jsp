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
		int oddSum =0 , evenSum=0;
		for( int i = 1; i<=100 ; i ++){
			if(i%2==1){
				oddSum += i;
			}else{
				evenSum += i;
			}
		}
	%>
	<p style="color: red;"><%=oddSum %></p>
	<p style="color: #009;"><%=evenSum %></p>
	<p ><%=oddSum + evenSum %></p>
	
</body>
</html>