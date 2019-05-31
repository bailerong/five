<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setMaxInactiveInterval(11);//设置session的有效活动时间为11s
	Date now = new Date();
	int h=0,m=0,s=0;
	response.setHeader("Refresh","10");//每10秒自动刷新页面

		if(session.isNew()){
			session.setAttribute("Start", now);
		}
		else{
			Date date = (Date)session.getAttribute("Start");//获取登录网站时间
			Date end = new Date();//获取现在时间
			long howmuch = end.getTime()-(date.getTime());
			h = (int)(howmuch/1000/60/60);//计算在网站停留的小时
			howmuch = howmuch - h*60*60*1000;
			m = (int)(howmuch/1000/60);//计算在网站停留的分钟
			howmuch = howmuch - m*60*1000;
			s = (int)(howmuch/1000);//计算在网站停留的秒
		}
//	}
%>
<table>
	<tr>
		<td>统计用户在某一页停留的时间</td>
	</tr>
	<tr>
		<td>您登录的时间为：<%=((Date)session.getAttribute("Start")).toLocaleString() %></td>
	</tr>
	<tr>
		<td>您在本页停留的时间为：<%=h %>小时<%=m %>分<%=s %>秒</td>
	</tr>
</table>
</body>
</html>