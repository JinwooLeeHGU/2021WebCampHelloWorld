<%@page import="com.javatpoint.dao.BookDao"%>
<jsp:useBean id="b" class="com.javatpoint.bean.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
int i=BookDao.save(b);
if(i>0){
response.sendRedirect("addbook-success.jsp");
}else{
response.sendRedirect("addbook-error.jsp");
}
%>