<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script type="text/javascript">
    	$(function(){
    		$("#sub").click(function(){
    			var id = $("#id").val();
    			if(id==""){
    				$("#tip").text("Invalid ID");
    			}else{
    				$.ajax({
    					type:"post",
    					url:"findCustByCard",
    					data:{"identity":$("#id").val()},
    					dataType:"json",
    					success:function(data){
    						if(data.flag=="ok"){
    							window.location.href="findCarForCust?custid="+data.custid+"&identity="+data.identity;
    						}else if(data.flag=="false"){
    							$("#tip").text("Invalid ID");
    						}
    					}
    				})
    			}
    		});
    		$("#id").focus(function(){
    			$("#tip").text("");
    		});
    	});
    </script>
    <style>
    	#id{
    		width:300px;
    		height:40px;
    	}
    </style>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>Place Order</strong></div>
  <div class="body-content" style="text-align:center" >
      ID：<input type="text" name="identity" id="id" />
      <button class="button bg-main icon-check-square-o"  id="sub">Yes</button>
      <font color='red' id="tip"></font>
  </div>
</div>
</body></html>