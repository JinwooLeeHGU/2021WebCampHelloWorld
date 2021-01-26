<%@page import="com.javatpoint.dao.BookDao,com.javatpoint.bean.Book"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Form</title>
</head>
<body>


<%
String id=request.getParameter("id");
Book b=BookDao.getRecordById(Integer.parseInt(id));
request.setCharacterEncoding("UTF-8");
response.setContentType("text/html;charset=UTF-8");
%>

<h1>Edit Form</h1>
<form action="editbook.jsp" method="post" enctype="Multipart/form-data">
<input type="hidden" name="id" value="<%=b.getId() %>"/>
<table>
<tr><td>Title </td><td><input type="text" name="title" value="<%=b.getTitle() %>"/></td></tr>
<tr><td>Author </td><td><input type="text" name="author" value="<%= b.getAuthor() %>"/></td></tr>
<tr><td>Comment </td><td><textarea name="comment"><%= b.getComment() %></textarea></td></tr>
<tr><td>Image </td><td><input type="file" name="photo" /> <br/>

<img src="${pageContext.request.contextPath }/upload/<%=b.getImage()%>"><br><%=b.getImage()%><br>

<tr><td colspan="2"><input type="submit" value="Edit Book"/></td></tr>
</table>
</form>

</body>
</html>