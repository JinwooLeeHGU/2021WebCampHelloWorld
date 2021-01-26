<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javatpoint.*, java.io.File" %>  
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%@page import="com.javatpoint.dao.BookDao"%>
<jsp:useBean id="b" class="com.javatpoint.bean.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

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
			sizeLimit, "utf-8");
	
	String title = multi.getParameter("title");
	/* System.out.println(title); */
	String author = multi.getParameter("author");
	String comment = multi.getParameter("comment");
	filename = multi.getFilesystemName("photo");
	
	System.out.println(filename);
	
	/* 이 부분이 정말 중요!! 전에는 addbook에서 set하는 부분 없어도 잘 작동했었는데... ? */ 
	b.setTitle(title);
	b.setAuthor(author);
	b.setComment(comment);
	b.setImage(filename);
	
%>	
	

<%
	int i=BookDao.save(b);
	if(i>0){
		response.sendRedirect("addbook-success.jsp");
	}else{
		response.sendRedirect("addbook-error.jsp");
	}
%>
</body>
</html>
