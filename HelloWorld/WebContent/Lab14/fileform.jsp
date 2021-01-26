<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="fileupload.jsp" method="post" accept-charset="utf-8" enctype="Multipart/form-data">
	제목 : <input type="text" name="title" /><br />
	이미지 : <input type="file" name="photo" /><br />
	<input type="submit" value="upload" />
	<input type="reset" value="취소" />
</form>


</body>
</html>