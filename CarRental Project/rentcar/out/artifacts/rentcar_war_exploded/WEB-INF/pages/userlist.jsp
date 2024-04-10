<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + path + "/";
	String carImgPath = request.getSession().getServletContext().getRealPath("/") + "WEB-INF/static/images/cars/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">

    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <style>
    	table{
    		width: 98%;
    		margin: 50px auto;
    	}
    	td,th{
    		border:1px solid #cccccc;
    		vertical-align:middle;
    		text-align:center;
    		padding:10px;
    	}
    	.priceStyle{
    		width:50px;
    	}
    	#cdes{
    		width:200px;
    	}
    	a {	
			padding-left:10px;
			padding-right:10px;
			padding-top:3px;
			padding-bottom:3px;
			background-color:#D9DEE8; height: 25px; width: 150px; 
			text-align: center; border: #D9DEE8; border-style: outset; 
			border-width: 2px; 
			-moz-border-radius:5px;
			-webkit-border-radius:5px;
			border-radius:5px;
		}
    </style>
<script type="text/javascript"  src="js/jquery.js" ></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>User Query</strong></div>
  <div class="body-content">
    <table >
		<tr>
			<th>NO.</th>
			<th>Username</th>
			<th>Password</th>
			<th>Name</th>
			<th>ID</th>
			<th>Gender</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Position</th>
			<th>Role</th>
			<th>Operation</th>
		</tr>
		<c:forEach items="${users}" var="user" >
			<tr>
				<td>${user.userid}</td>
				<td>${user.username}</td>
				<td>${user.userpwd}</td>
				<td>${user.realname}</td>
				<td>${user.identity}</td>
				<td>${user.sex}</td>
				<td>${user.address}</td>
				<td>${user.phone}</td>
				<td>${user.position}</td>
				<td>${user.role.rolename}</td>
				<td>
					<a href="deleteById?userid=${user.userid}" />Delete</a> |
					<a href="preUpdateUser?userid=${user.userid}">Modify</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </div>
</div>
</body></html>