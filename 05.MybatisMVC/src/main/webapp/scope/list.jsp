<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%@ include file="/include/header.jsp"%>

	<h1>스코프</h1>
	<%
		//페이지 내에서 데이터를 유지하기 위한 객체(PageContext) : 지역변수
		pageContext.setAttribute("pagectx", "PAGECONTEXT");
		request.setAttribute("jsprequest", "JSPREQUEST");
		session.setAttribute("jspsession", "JSPSESSION");
		application.setAttribute("jspappctx", "JSPAPPCTX");
	%>
	
	<p><%=request.getAttribute("request") %></p>
	<p><%=session.getAttribute("session") %></p>
	<p>${request}</p>
	<p>${session}</p>
	<a href="scope/test.jsp">다음 페이지에서 데이터를 가지고 있는지 확인하기 위한 이동</a>

<%@ include file="/include/footer.jsp"%>
</html>