<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%
	GuestBookDao gbd = new GuestBookDao();
    List<GuestBookVo> guestBookList = gbd.getGuestBookList();
    System.out.println(guestBookList.toString());
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <form action = "./add.jsp" method = "post">
	<table border="1">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name"></td>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
		 <td colspan="4"><textarea style="width:100%;" name = "content"></textarea></td>
		</tr>
		<tr>
		 <td colspan="4"><button type="submit">등록</button></td>
		</tr>
	</table>
  </form>
  <br>
    
  <%for(GuestBookVo guest : guestBookList){%>
	<table border = "1" style = "width:500px;">
		<tr>
			<td style = "width:50px;"><%= guest.getNo() %></td>
			<td style = "width:200px;"><%= guest.getName() %></td>
			<td style = "width:200px;"><%= guest.getDate() %></td>
			<td style = "width:50px;"> <a href = "./deleteForm.jsp?id=<%= guest.getNo() %>">삭제</a> </td>
		</tr>
		<tr>
			<td colspan="4"><%= guest.getContent() %></td>
		</tr>
	</table>
	<br>
	<%} %>  
  
</body>
</html>