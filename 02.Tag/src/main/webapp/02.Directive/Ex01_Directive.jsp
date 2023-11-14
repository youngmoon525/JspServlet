
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>디렉티브 태그 (Directive Tag) : @</h1>
	<h4>ContentType : 어떤 형태로 페이지를 출력할건지에 대한 결정 : 웹에서는 변경이 거의 없음</h4>
	<h5>contentType="application/json; charset=UTF-8" Json형태로 응답</h5>
	<h4>PageEncoding : 문자 인코딩 ( 각 나라별 언어마다 인코딩 방식이 다름. 한글 utf-8 )</h4>
	<%@page import="java.util.Date"%>
	<h4>import : 자바 Date클래스 <%= new Date() %> </h4>
	<h5>java.util.Data라는 클래스를(외부) 사용하기 위해서 기능을 추가함 ※자동완성을 안쓰면 이클립스에서 처럼 마우스 올려서 자동 임포트x※</h5>
	
	<!-- Random클래스를 이용해서 1~100사이의 수가 랜덤하게 출력되게 만들어보기.(HTML)에 숫자가 표기 되어야 한다. -->
	<% Random r = new Random(); 
	   int ranNum = r.nextInt(100)+1;
	   if(ranNum%2==1){
	%>
		<p><%=ranNum+" : 홀수 " %></p>
	<%}else{ %>
		<p><%=ranNum+" : 짝수 " %></p>		
	<%} %>
	<!-- 해당하는 수 ↑ 홀수인지 짝수인지를 판단하여 HTML에 보여주기 (랜덤한수도 같이 보임) -->
	
	<!-- ex) 3 : 홀수 , 4:짝수... -->
	
</body>
</html>