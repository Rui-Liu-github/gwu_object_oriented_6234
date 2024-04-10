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
    		width:90%;
    		margin: 10px auto;
    		border:1px solid #CCCCCC;
    	}
    	td,th{
    		vertical-align: middle; 
    		text-align: center;
    		margin:20px;
    		padding:5px;
    		border:1px solid #CCCCCC;
    	}
    	.priceStyle{
    		width:50px;
    	}
    	#cdes{
    		width:200px;
    	}
    	a {
			padding: 3px 10px;
			background-color:#D9DEE8; height: 25px; width: 150px; 
			text-align: center; border: #D9DEE8; border-style: outset; 
			border-width: 2px; 
			-moz-border-radius:5px;
			-webkit-border-radius:5px;
			border-radius:5px;
		}
    </style>
<script type="text/javascript"  src="js/jquery.js" ></script>
<script type="text/javascript">
	function deleteCar(carId){
		var flag = window.confirm("Are you sure to delete？");
		if(flag){
			window.location.href="deleteCar?carid="+carId;
		}
	}
</script>  
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Find Car</strong></div>
  <div class="body-content">
    <table>
		<tr>
			<th>License Plate NO.</th>
			<th>Model</th>
			<th>Brand</th>
			<th>Color</th>
			<th>Value</th>
			<th>Rent Price</th>
			<th>Deposit</th>
			<th>Rental Status</th>
			<th>Picture</th>
			<th style="width:200px">Additional Information</th>
			<th>Operation</th>
		</tr>
		<c:forEach items="${cars}" var="car" >
			<tr>
				<td>${car.number}</td>
				<td>${car.type}</td>
				<td>${car.brand}</td>
				<td>${car.color}</td>
				<td>${car.price}</td>
				<td>${car.rentprice}</td>
				<td>${car.deposit}</td>
				<td>
					<c:if test="${car.isrenting eq 0}">
						NO
					</c:if>
					<c:if test="${car.isrenting eq 1}">
						Yes
					</c:if>
				</td>
				<td>
					<img src="images/cars/${car.img}" alt="No Image" style="width:100px;height:80px" />
				</td>
				<td><span id="cdes">${car.description}</span></td>
				<td>
					<a href="javascript:void(0)" onclick="deleteCar('${car.carid}')" id="del" />Delete</a> |
					<a href="preUpdateCar?carId=${car.carid}" />Modify</a>
				</td>
			</tr>
		</c:forEach>
	</table>
  </div>
</div>
</body></html>