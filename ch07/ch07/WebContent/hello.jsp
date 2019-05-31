<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorHandler.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if (request.getParameter("name") == null){
		throw new RuntimeException("没有指定name属性。");
	}
%>
Hello,<%= request.getParameter("name") %>
</body>
</html>