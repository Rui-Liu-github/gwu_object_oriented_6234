<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn"> 
<head>
    <meta http-equiv="Content-Type" constent="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">

    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="My97DatePicker/WdatePicker.js"></script>
    <style>
    	table{
    		width:90%;
    		margin: 50px auto;
    	}
    	td,th{
    		vertical-align: middle; 
    		margin:20px;
    		padding:5px;
    		border:1px solid #CCCCCC;
    		border-left:none;
    		border-right:none;
    	}
    	.tableInfo{
    		color:red;
    		font-weight: 600;
    		font-size: 20px;
    		text-align:center;
    	}
    </style>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Return Storage</strong></div>
  <div class="body-content">
    <form  action="updateChecktable"  method="post">
		<table>
			<tr>
				<td>Inspection Number：</td>
				<td><input type="text" name="checkno" readonly="readonly" value="${checktable.checkno}" /></td>
				<td>Inspection Time：</td>
				<td><input type="text" name="checktime" readonly="readonly" value="${checktable.checktime}"  /></td>
			</tr>
			<tr>
				<td>Agent：</td>
				<td><input type="text" name="username" readonly="readonly" value="${checktable.username}" /></td>
				<td>Order Number：</td>
				<td><input type="text" name="rentid" readonly="readonly" value="${checktable.rentid}" /></td>
				
			</tr>
			<tr>
				<td>Note：</td>
				<td><input type="text" name="type" value="${checktable.type}" /></td>
				<td>Compensation：</td>
				<td><input type="text" name="paying" value="${checktable.paying}" /></td>
			</tr>
			<tr>
				<td>Problem：</td>
				<td ><input type="text" name="problem" value="${checktable.problem}" /></td>
				<td>Inspection Status</td>
				<td>
					<select name="flag">
						<option value="1">Pass</option>
						<option value="0">Damage</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="Modify" id="send" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="Reset" /></td>
				<td></td>
			</tr>
		</table>
	</form>

  </div>
</div>
</body></html>