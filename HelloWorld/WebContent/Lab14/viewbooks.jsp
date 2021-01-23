<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
</head>
<body>

<%@page import="com.javatpoint.dao.BookDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Book List</h1>

<%
List<Book> list=BookDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Title</th><th>Author</th><th>Comment</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="b">
	<tr><td>${b.getTitle()}</td><td>${b.getAuthor()}</td><td>${b.getComment()}</td><td><a href="editform.jsp?id=${b.getId()}">Edit</a></td><td><a href="deletebook.jsp?id=${b.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addbookform.jsp">Add New Book</a>

</body>
</html>