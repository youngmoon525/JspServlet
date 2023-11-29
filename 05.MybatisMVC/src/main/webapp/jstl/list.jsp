<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>

 <section class="page-section">
 	<div class="container">
 	 <h1>JSTL 연습</h1>
 	 <p>JSP 개발을 좀 더 편하고 단순화 하기 위한 태그 libarary(JSP Standard Tag Library) </p>
 	 <p>Spring Boot(HTML) 타임리프 , ""Spring Legacy, (JSP) JSTL</p>
 	 <h3>CORE (jstl/core)</h3>
 	 <p>디렉티브 태그를 이용하여 사용할 태그를 prefix(식별자,구분자)를 주고 선언 ( c , fmt , fn)</p>
 	 <c:set var="num1" value="100" />
 	 <%-- <%!int jNum1 = 100; %> --%>
 	 <p>EL문법: ${num1} JAVA:${jNum1} 자바 코드는 사용x</p>
 	 <c:set var="num2" value="200"/>
 	 <p>num1과num2의 합 : ${num1+num2 } HTML: ${num1} + ${num2}</p>
 	 
 	 <c:if test="${num1 == 100}">
 	 	<p>num1은 100입니다</p>
 	 </c:if>
 	 <c:choose>
 	 	<c:when test="${num1 == 101 }">
 	 		<p> num1은 101입니다.</p>
 	 	</c:when>
 	 	<c:otherwise>
 	 		<p> num1은 101이 아닙니다.</p>
 	 	</c:otherwise>
 	 </c:choose>
 	 <!-- 코어라이브러리를 이용해서 구구단 중에 홀수의 단만 출력되게 처리해보기. foreach가 두개 , if  -->
 <%-- 	 <c:forEach items="listCollection" var="한건을 어떤 이름으로 빼올지"></c:forEach> --%>
 	 
 	 <c:forEach var="i" begin="2" end="9">
 	 	<c:if test="${i%2 == 1}">
	 	 	<c:forEach var="j" begin="1" end="9">
	 	 		<p>${i} * ${j} = ${i*j}</p>
	 	 	</c:forEach>
 	 	</c:if>
 	 </c:forEach>
 	 
 	 <h1>포맷 태그</h1>
 	 <p>데이터의 형태를 바꿈(통화표시 , 날짜 등등) 오류가 많이남.</p>
 	 <c:set var="date" value="<%=new Date() %>" />
 	 <p>현재 시간을 담고있는 변수 그냥 출력 (EL):${date}</p>
 	 <p>오늘의 날짜 FMT태그로 표현(년월일): <fmt:formatDate value="${date}" type="date" />  </p>
 	 <p>오늘의 날짜 FMT태그로 표현(시간): <fmt:formatDate value="${date}" type="time" />  </p>
 	 <p>오늘의 날짜 FMT태그로 표현(년월일시분초): <fmt:formatDate value="${date}" type="both" />  </p>
 	 <p>오늘의 날짜 FMT태그로 표현(패턴): <fmt:formatDate value="${date}" type="date" pattern="yyyy년 MM월 dd일(E) " />  </p>
 	 
 	 <c:set var="number" value="123456789"  />
 	 <p>${number}</p>
 	 <p>fmt이용 그루핑 사용: <fmt:formatNumber value="${number}" groupingUsed="true" /> </p>
 	 <p>fmt이용 그루핑 사용: <fmt:formatNumber value="${number}" groupingUsed="false" /> </p>
 	 <p>fmt이용 패턴: <fmt:formatNumber value="${number}" pattern="#,##0" /> </p>
 	 <p>fmt이용 패턴: <fmt:formatNumber value="${number}" pattern="#,##0원" /> </p>
 	 <p>fmt이용 금액1: <fmt:formatNumber value="${number}" type="currency"/> </p>
 	 <p>fmt이용 금액2: <fmt:formatNumber value="${number}" type="currency" currencySymbol="$" /> </p>
 	 <p>fmt이용 금액2: <fmt:formatNumber value="0.163" type="percent" /> </p>
 	 <p>fmt이용 금액2: <fmt:formatNumber value="0.163" pattern="0.00%" /> </p>
 	 
 	 <!-- 기타포맷  -->
 	 <h1>펑션</h1>
 	 <c:set var="str" value="    Hello Jsp Servlet     " />
 	 <p>EL출력 : ${str}</p>
 	 <p>대문자로 바꾸기 : ${fn:toUpperCase(str)}</p>
 	 <p>소문자로 바꾸기 : ${fn:toLowerCase(str)}</p>
 	 <p>문자열의 길이 : ${fn:length(str) }</p>
 	 <p>공백제거 : ${fn:trim(str) }</p>
 	 <p>공백제거 후 길이 : ${ fn:length(    fn:trim(str)  ) }</p>
 	 <p>문자열 치환 : ${fn:replace(str , "Jsp" , "Web" ) }</p>
 	</div>
 </section>
	
	
<%@ include file="/include/footer.jsp"%>
</html>