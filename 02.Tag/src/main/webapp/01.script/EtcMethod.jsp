<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메소드 사용</h1>
	<!--  Java에서 메소드를 만드는 과정에서 사용되었던 지역 ( 클래스의 지역 ) 
	JSP컨테이너(톰캣) : 바로 아래 메소드를 자바코드 영역으로 만들고 사용할수있게 제공해줌. !<---(x)
	기본 스크립틀릿태그는 사실 하나의 메소드 내부에서 동작하는 코드를 만들어냈던것.
	 -->
	<%!int getSum(int x, int y) {
		return x + y;
	}

	int getMinus(int x, int y) {
		return x - y;
	}

	int getMul(int x, int y) {
		return x * y;
	}

	int getDiv(int x, int y) {
		return x / y;
	}%>
	<%
	int getSum = 30;
	%>
	<!-- getSum메소드에 파라메터로 10과20을 보내고 결과 30을 화면에 찍히게 해보기.
		getMinus(빼기)
		getMul(곱하기)
		getDiv(나누기)
	  -->
	<a>getSum: <%=getSum(10, 20)%></a>
	<a>getMinus: <%=getMinus(10, 20)%></a>
	<a>getMul: <%=getMul(10, 20)%></a>
	<a>getDiv: <%=getDiv(10, 20)%></a>

</body>
</html>