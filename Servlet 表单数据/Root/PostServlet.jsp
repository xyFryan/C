<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Post方法传参</title>
</head>
<body>
    <form action="HelloForm2" method="POST">
	网址名：<input type="text" name="name">
	<br />
	网址：<input type="text" name="url" />
	<input type="submit" value="提交" />
	</form>
</body>
</html>