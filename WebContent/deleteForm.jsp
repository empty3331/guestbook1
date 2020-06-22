<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao"%>
<%@ page import="com.javaex.vo.GuestBookVo"%>

<% 
int _id = Integer.parseInt(request.getParameter("id")); 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action = "./delete.jsp" method = "post">
 
 	비밀번호<input type="password" name="password">
 	<button type = "submit">확인</button>
	<input type = "hidden" name = "_id" value = <%= _id%>>
 
 </form>
 
 <a href="./addList.jsp">메인으로 돌아가기</a>
 
</body>
</html>