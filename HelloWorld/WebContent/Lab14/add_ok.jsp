<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<@ page import="com.javatpoint.dao.BookDao" %>
<%-- <jsp:useBean id="b" class="com.javatpint.bean.Book"></jsp:useBean> --%>
<jsp:setProperty property="*" name="b"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<% 
	/* int i=BookDao.save(b); */
	
	/* BookDao = 
	b = 정리할것  */
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String comments = request.getParameter("comments");
%>
	
</body>
</html>