<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="deal.jsp" method="POST" >
	<table>
			<tr>
				<td>用户名:</td>
				<td><input name="username" type="text" size="15" maxlength="10"/></td>
			</tr>	
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;码:</td>
				<td><input name="password" type="password" size="15" maxlength="10"/></td>
			<tr>
				<td></td>
				<td><input  name="btn1" type="submit" value="登录"/>	
				<input  name="btn2" type="reset" value="取消 "/></td>
			</tr>
		</table>
</form>
</body>
</html>