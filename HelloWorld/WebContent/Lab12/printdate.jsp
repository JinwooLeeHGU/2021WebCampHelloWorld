<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
<body>  
  
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  
<%= request.getParameter("name") %>  
  
</body>  
</html> 