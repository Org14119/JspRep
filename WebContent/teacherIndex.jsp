<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.system.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if ((session == null) || session.getAttribute("type") == null || session.getAttribute("teacher") == null
				|| session.getAttribute("state") == null) {
	%>
	<%="您还没登陆吧，老师？"%>
	<a href="index.jsp">点击这里登陆</a>

	<%
		} else {
	%>
	<%
		String type = (String) session.getAttribute("type");
			Teacher t = (Teacher) session.getAttribute("teacher");
			boolean flag = (boolean) session.getAttribute("state");
			if (flag && type.equals("teacher")) {
				out.println("欢迎您，" + t.getName() + "教师!");
			} else {
				session.invalidate();
				response.sendRedirect("login.jsp");
			}
	%>
	<%
		}
	%>
	<a href="getTeacherAllSpace.jsp">查看你的所有的题库</a>
	<center>
		<jsp:include page="teacherBindingInfo.jsp"></jsp:include>
	</center>
</body>
</html>