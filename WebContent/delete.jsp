<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao"%>

<%

int id = Integer.parseInt(request.getParameter("_id"));
String password = request.getParameter("password");
GuestBookDao gbd= new GuestBookDao();
gbd.guestBookDelete(id,password);

response.sendRedirect("./addList.jsp");


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