<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
	//定义三名用户
	String[] [] userList={{"zhangsan","123"},
						  {"lisi","456"},
						  {"wangwu","789"}};
	boolean flag = false;
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String pwd = request.getParameter("password");
	
	for(int i=0;i<userList.length;i++){
		if(userList[i][0].equals(username)){
			if(userList[i][1].equals(pwd)){
				flag = true;//验证通过
				break;
			}
		}
	}
	if(flag){
		session.setAttribute("username",username);//将username保存在session中
		response.sendRedirect("main.jsp");//页面跳转
	}
	else{
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>