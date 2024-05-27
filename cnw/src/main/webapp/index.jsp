<%@page import="model.bean.User"%>
<%@page import="model.bean.Account"%>
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
    	Account account = (Account) session.getAttribute("account");
    	User user = (User) session.getAttribute("user");
    %>
    <h2>Account</h2>
    	<tr>
		    <td><%= account.getUsername() %></td>
		    <td><%= account.getPassword() %></td>
		    <td><%= account.getPriority() %></td>
		</tr>
    <h2>UserInfor</h2>
    <tr>
		    <td><%= user.getUsername() %></td>
		    <td><%= user.getName() %></td>
		    <td><%= user.getEmail() %></td>
		    <td><%= user.getPhonenumber() %></td>
		    <td><%= user.getAddress() %></td>
		</tr>
</body>
</html>