<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username=(String)session.getAttribute("username");//获取保存在session的用户名
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	您好！[<%=username %>]欢迎您访问！<br>
	<a href="exit.jsp">退出</a>
</body>
</html>