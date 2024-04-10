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
    		width: 900px;
    		margin: 50px auto;
    	}
    	td{
    		vertical-align:middle;
    		padding:10px;
    	}
    </style>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Add Car</strong></div>
  <div class="body-content">
    <form  method="post" class="form-x" action="addCarHandler" enctype="multipart/form-data" >
      <table>
			<tr>
				<td width="100px">license Plate NO.</td>
				<td width="200px"> <input type="text" name="number" id="ccarNumber" class="required" /> * </td>
				<td width="100px">Model</td>
				<td width="200px"> <input type="text" name="type" id="ccarType" class="required" /> * </td>
			</tr>
			<tr>
				<td>Color</td>
				<td> <input type="text" name="color" id="ccolor" />  </td>
				<td>Value</td>
				<td> <input type="text" name="price" id="cprice" class="required" /> * </td>
			</tr>
			<tr>
				<td>Rent Price</td>
				<td> <input type="text" name="rentprice" id="crentprice" class="required" /> * </td>
				<td>Deposit</td>
				<td> <input type="text" name="deposit" id="cdeposit" class="required" /> * </td>
			</tr>
			<tr>
				<td>Rental Status</td>
				<td> 
					<select name="isrenting" id="crenting">
						<option value="0">NO</option>
					</select>
				</td>
				<td>Brand</td>
				<td> <input type="text" name="brand" id="ccarBrand" class="required" /> * </td>
			</tr>
			<tr>
				<td>Picture</td>
				<td colspan="3"> <input type="file" name="imgFile" id="cimg" />  </td>
			</tr>
			<tr><td>Additional Information</td>
				<td colspan="3">
				<div class="form-group">
		        <div class="field">
		          <textarea name="description" class="input" style="height:120px;"></textarea>
		          <div class="tips"></div>
		        </div>
		      </div>
				</td>
			</tr>
		</table>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" id="dataSub"> Submit</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>