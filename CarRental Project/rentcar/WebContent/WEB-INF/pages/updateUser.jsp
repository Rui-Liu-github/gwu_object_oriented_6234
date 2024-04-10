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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">

    <base href="<%=basePath %>"  />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <script src="js/formCheck.js"></script>
    <style>
    	table{
    		border:1px solid #cccccc;
    		width: 800px;
    		margin: 50px auto;
    	}
    	td{
    		padding:10px;
    	}
    </style>
    <script type="text/javascript">
    $(function(){
		$.ajax({
			type:"post",
			url:"preAdduserData",
			dataType:"json",
			success:function(data){
				for(var i=0; i<data.length; i++){
					$("#crenting").append("<option value="+data[i].roleid+">"+data[i].rolename+"</option>");
				}
			}
		})
	});
    </script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>User Modify</strong></div>
  <div class="body-content">

    <form method="post" class="form-x" action="userUpdate" enctype="multipart/form-data" >

    <input type="hidden" name="userid" value="${user.userid}" />

     <table>
			<tr>
				<td width="100px">Username</td>
				<td width="300px"> <input type="text" name="username" id="cuserName" value="${user.username}" class="required" /> * </td>
				<td width="100px">ID</td>
				<td width="300px"> <input type="text" name="identity" id="cidentity" value="${user.identity}" class="required" /> * </td>
			</tr>
			<tr>
				<td>Password</td>
				<td> <input type="text" name="userpwd" id="cuserPassword" value="${user.userpwd}"  class="required" />  </td>
				<td>Phone</td>
				<td> <input type="text" name="phone" id="cphone"value="${user.phone}" class="required" /> * </td>
			</tr>
			<tr>
				<td>Address</td>
				<td> <input type="text" name="address" id="uaddress" value="${user.address}"/> </td>
				<td>Gender</td>
				<td>
					<c:if test="${user.sex eq 'Male'}">
						<select name="sex">
 							<option value="Male" selected="selected">Male</option>
 							<option value="Female">Female</option>
						</select>
					</c:if>
					<c:if test="${user.sex eq 'Female'}">
						<select name="sex">
 							<option value="Male" >Male</option>
 							<option value="Female" selected="selected">Female</option>
						</select>
					</c:if>
				 * </td>
			</tr>

			<tr>
				<td>Name</td>
				<td> <input type="text" name="realname" id="crealname" value="${user.realname}" class="required" /> * </td>
				<td>Position</td>
				<td> <input type="text" name="position" id="uposition"  value="${user.position}"/></td>
			</tr>
			<tr>
				<td>Role</td>
				<td>
					<select name="roleid" id="crenting">
					</select>
				</td>
				<td></td>
				<td></td>
			</tr>
		</table>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" id="dataSub"> Submit</button>
        </div>
    </form>
  </div>
</div>
</body></html>