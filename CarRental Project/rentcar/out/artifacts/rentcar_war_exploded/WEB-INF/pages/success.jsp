<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
			request.getServerPort()	+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<base href="<%=basePath %>" />  
<style type="text/css">
body{
	background: url('images/success2.png') no-repeat center center fixed;

	min-height: 100vh;
}
h1{
	margin-left:100px;
}
</style>
 <script src="js/jquery.js"></script>
</head>

</html>