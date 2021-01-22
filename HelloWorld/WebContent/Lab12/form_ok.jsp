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
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String accept = request.getParameter("accept");
	String interest = request.getParameter("interest");
	String intro = request.getParameter("intro");
%>
<br>
넘어온 데이터는 아래와 같습니다: <br>
<%= id + "<br>" + pwd + "<br>" + email + "<br>" + accept + "<br>" + interest +  "<br>" + intro %>
</body>
</html>