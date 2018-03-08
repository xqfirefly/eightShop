<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台管理界面</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css"/>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript"></script>
	</head>
	<body>
		
	<div class="place">
        <span>位置：</span>
        <ul class="placeul">
        <li><a href="index.html">首页</a></li>
        <li>商品类别</li>
        </ul>
    </div>
    <div>
    	<table border="1" align="center">
				<tr align="center">
					<td>类别编号</td>
					<td>父类编号</td>
					<td>类别名称</td>
				</tr>
				<c:forEach items="${list }" var="p">
					<tr>
						<td>${p.id }</td>
						<td>${p.main_id }</td>
						<td>${p.name }</td>
					</tr>
				</c:forEach>
		</table>
    </div>
	</body>
</html>