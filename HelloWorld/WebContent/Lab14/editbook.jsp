<%@page import="com.javatpoint.dao.BookDao"%>
<jsp:useBean id="b" class="com.javatpoint.bean.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
int i=BookDao.update(b);
response.sendRedirect("viewbooks.jsp");
%>