<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>订单详情</title>
	</head>
	<body>
		<p>订单信息详情</p><br/>
		<p>订单编号:${bean.orderList.id }</p>
		<p>订单用户:${bean.username }</p>
		<p>用户编号:${bean.orderList.id }</p>
		<p>商品编号:${bean.orderList.id }</p>
		<p>用户地址:${bean.address.provience }省${bean.address.city }市</p>
		<p>详细地址:${bean.address.detail }</p>
		<p>联系电话:${bean.address.mobile }</p>
		
	</body>
</html>