<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>include tag를 사용하면 현 페이지에 해당 파일을 포함시켜서 redirection 없이 가능</h2>  
 <p> 아래는 현재 날짜 보여줌.</p> 
 
<jsp:include page="printdate.jsp" />  
  
<h2>end section of index page</h2>  
</body>
</html>