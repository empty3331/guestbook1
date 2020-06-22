<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>


<% 

request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String password = request.getParameter("password");
String content = request.getParameter("content");

GuestBookVo gbv = new GuestBookVo(name,password,content);
GuestBookDao gbd= new GuestBookDao();

gbd.guestBookInsert(gbv);

response.sendRedirect("addList.jsp");

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