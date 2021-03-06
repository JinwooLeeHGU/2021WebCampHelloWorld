<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 결과 </title>
</head>
<body>
<%
	String filename="";
	int sizeLimit = 15 * 1024 * 1024;
	
	// 상대경로를 절대경로로 가져와야함
	String realPath = request.getServletContext().getRealPath("upload");
	System.out.println(realPath);
	
	//upload 폴더가 없는 경우 폴더를 만들어야함.
	File dir = new File(realPath);
	if(!dir.exists()) dir.mkdirs();
	
	MultipartRequest multi = null;
	multi= new MultipartRequest(request, realPath, 
			sizeLimit, "utf-8",new DefaultFileRenamePolicy());
	
	String title = multi.getParameter("title");
	System.out.println(title);
	filename = multi.getFilesystemName("photo");
	System.out.println(filename);

%>
제목 : <%=title %><br />
파일명 : <%=filename%><br />
<img src="${pageContext.request.contextPath }/upload/<%=filename%>">

</body>
</html>