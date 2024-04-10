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
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Modify Order</strong></div>
  <div class="body-content">
    <form  action="updateRentTableHandler"  method="post">
    	<input type="hidden" name="rentid" value="${table.rentid}" />
		<table>
			<tr>
				<td colspan="6" class="tableInfo">Order</td>
			</tr>
			<tr>
				<td>Order Number</td>
				<td>${table.rentNo}</td>
				<td>Deposit</td>
				<td>${table.imprest}</td>
			</tr>
			<tr>
				<td>Payable</td>
				<td>${table.pricePayAble}</td>
				<td>Paid</td>
				<td><input type="text" name="realPay" value="${table.realPay}" /></td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><input type="text" name="beginTime" value="${table.beginTime}" id="rentStartTime" class="Wdate" onfocus="WdatePicker({readOnly:true})" /></td>
				<td>Due Date</td>
				<td><input type="text" name="endTime" value="${table.endTime}" id="rentEndTime"  class="Wdate" onfocus="WdatePicker({readOnly:true})" /></td>
			</tr>
			<tr>
				<td>Return Date</td>
					<td><input type="text" name="realEndTime" value="${table.realEndTime}" id="realRentEndTime"  class="Wdate" onfocus="WdatePicker({readOnly:true})" /></td>
				<td>Order Status</td>
				<td>
					<select name="rentflag">
						<option value="1">Processing</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Agent</td>
				<td>
					<input type="text" name="userName" readonly="readonly" value="${currentUser.username}"/>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;"><input type="submit" value="Yes" id="send" />&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
				<td></td>
			</tr>
		</table>
	</form>
	
	<table>
		<tr> 
			<td colspan="6" class="tableInfo">Customer</td>
		</tr>
		<tr>
			<td>ID</td>
			<td>${customer.identity}</td>
			<td>Name</td>
			<td>${customer.name}</td>
		</tr>
		<tr>
			<td>Address</td>
			<td>${customer.address}</td>
			<td>Phone</td>
			<td>${customer.phone}</td>
		</tr>
	</table>

	<table>
		<tr>
			<td colspan="6" class="tableInfo">Car</td>
		</tr>
		<tr>
			<td>License Plate NO.</td>
			<td>${car.number}</td>
			<td>Model</td>
			<td>${car.type}</td>
			<td>Color</td>
			<td>${car.color}</td>
		</tr>
		<tr>
			<td>Value</td>
			<td>${car.price}</td>
			<td>Rent</td>
			<td>${car.rentprice}</td>
			<td>Deposit</td>
			<td>${car.deposit}</td>
		</tr>
		<tr>
			<td>Rental Status</td>
			<td>
			<c:if test="${car.isrenting eq 0}">
					NO
				</c:if>
				<c:if test="${car.isrenting eq 1}">
					Yes
				</c:if>
			</td>
		</tr>
	</table>
  </div>
</div>
</body></html>