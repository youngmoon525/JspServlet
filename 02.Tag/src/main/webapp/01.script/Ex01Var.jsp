
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 자바코드 + HTML 태그</h1>
	<!-- int형 변수 vInt에 숫자 10을 넣고 초기화.
		 String형 변수 vStr에 테스트 중입니다 넣고 초기화
		 double 변수 하나만들고 3.14넣고 초기화
		 ArrayList<String>만들기 <=" 자동완성으로 만들면 위에 어떤 태그가 하나 생김."
		 내용 추가 내 이니셜을 하나씩 넣기.
	 
	 	HTML내부 태그에 해당하는 모든 내용을 출력하기.
	 -->
	 <% int vInt =10 ;
	 	String vStr = "테스트 중입니다.";
	 	double vDouble = 3.14;
	 	ArrayList<String> sList = new ArrayList<>();
	 	sList.add("K");
	 	sList.add("Y");
	 	sList.add("M");
	 %>
	 
	 <p style="font-size: 24px; color: #009900">vInt: <%=vInt %></p>
	 <p style="font-size: 24px; color: #990000">vStr: <%=vStr %></p>
	 <p style="font-size: 24px; color: #000099">vDouble: <%=vDouble %></p>
	 <p style="font-size: 24px; color: #990099">sList: <%=sList.get(0) + sList.get(1) + sList.get(2) %></p>
	
</body>
</html>