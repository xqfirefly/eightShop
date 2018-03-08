<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台商品管理界面</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css"/>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript"></script>
	</head>
	
	<body>
	<div id="center">
			<div id="middle">
				<div id="r1">
					<div class="place">
					    <span>位置：</span>
					    <ul class="placeul">
					    <li>首页</li>
					    <li>商品信息</li>
					    </ul>
					    </div>
					    <div class="formbody">
					    <div class="formtitle"><span>商品信息</span></div>
					    
					<div>
					<table border="1" align="center">
						<tr align="center">
							<td>id</td>
							<td>名称</td>
							<td>价格</td>
							<td>剩余量</td>
							<td>销售量</td>
							<td>商品描述</td>
							<td>添加时间</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${list }" var="p">
							<tr>
								<td>${p.id }</td>
								<td>${p.name }</td>
								<td>${p.price }</td>
								<td>${p.surplus_count }</td>
								<td>${p.saled_count }</td>
								<td>${p.detail }</td>
								<td>${p.cdate }</td>
								<td>
								<a href="/shope/getProByID?id=${p.id }">修改</a>|
								<a href="/shope/deletePro?id=${p.id }">删除</a>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				</div>
				</div>
			</div>
		</div>
	</body>
</html>