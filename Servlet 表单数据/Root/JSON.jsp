<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta   http-equiv="Expires"   CONTENT="0">
<meta   http-equiv="Cache-Control"   CONTENT="no-cache">
<meta   http-equiv="Pragma"   CONTENT="no-cache">
<title>Insert title here</title>
</head>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
 $(document).ready(function(){
	 $('#button').click(function(){ 
		 $.getJSON('servlet/adminServlet',{name:"赵四",age:30},function(data){ 
		 var music="<ul>"; 
		 $.each(data,function(i,n){ 
		 music+="<li>"+n["name"]+n["age"]+"</li>"; 
		 }); 
		 music+="</ul>"; 
		 $('#result').append(music); 
		 }); 
		 return false; 
		 }); 
 });
</script>
	<body>
	<div>点击按钮获取JSON数据</div> 
    <input type="button" id="button" value="确定" /> 
    <div id="result"></div> 
	</body>
</html>