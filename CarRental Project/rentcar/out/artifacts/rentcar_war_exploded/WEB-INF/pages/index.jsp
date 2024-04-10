<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 
			request.getServerPort()	+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>car rental management system</title>
    <base href="<%=basePath %>" />
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="new-header">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/user3.png" class="" height="50" alt="" /></h1>
  </div>
	<div class ="fadein-top"> <h1> Car rental Management Center </h1> </div>
  <div class="head-l fadein-top"> &nbsp;&nbsp;<a class="button button-little bg-red" href="logout"><span class="icon-power-off"></span> Logout</a> </div>
</div>

<div class="leftnav">
    <c:forEach items="${menus}" var="m">
    <c:choose>
    <c:when test="${m.menuId eq 1 }">
        <!-- 如果 menuId 是 1，则不显示任何内容 -->
    </c:when>
    <c:when test="${m.parentid eq 1 }">
    <!-- 对于 parentId 为 1 的项，即顶级菜单项 -->
    <c:if test="${not empty flag && flag eq true}">
        <!-- 如果 flag 已经设置为 true，则需要先关闭之前的 ul -->
        </ul>
    </c:if>
    <!-- 设置 flag 为 true，表示下一个 ul 是一个新的子菜单组 -->
    <c:set var="flag" value="true"/>
    <h2><span class="icon-user"></span>${m.name}</h2>
    <ul style="display:none"> <!-- 子菜单开始，默认不显示 -->
        </c:when>
        <c:otherwise>
            <!-- 对于非顶级菜单项 -->
            <c:if test="${flag eq true}">
                <!-- 如果 flag 为 true，表示处于正确的子菜单组内 -->
                <li><a href="${m.url}" target="right"><span class="icon-caret-right"></span>${m.name}</a></li>
            </c:if>
        </c:otherwise>
        </c:choose>
        </c:forEach>
        <c:if test="${flag eq true}">
        <!-- 循环结束，确保 ul 被关闭 -->
    </ul>
    </c:if>
</div>
<script type="text/javascript">
    $(function(){
        $(".leftnav h2").click(function(){
            $(this).next("ul").slideToggle(200);
            $(this).toggleClass("on");
        });
    });
</script>


<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>