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
	int count = 0;
	synchronized(application){
		if (application.getAttribute("times") == null){//服务器启动后的第一位访问者
			count=1;
		}
		else{
			count = Integer.parseInt((String) application.getAttribute("times"));
			count++;
		}
		application.setAttribute("times",Integer.toString(count));//将访问次数存入Application对象
	}
%>
<table>
	<tr>
		<td>欢迎访问！</td>
	</tr>
	<tr>
		<td>您是第<b><%=count %></b>位访问本网站的游客！</td>
	</tr>
</table>
</body>
</html>