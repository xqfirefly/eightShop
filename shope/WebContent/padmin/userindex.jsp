<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台商品管理界面</title>
	</head>
	<body>
		<div>
			<table border="1" align="center">
				<tr align="center">
					<td>用户id</td>
					<td>用户名</td>
					<td>用户密码</td>
					<td>联系方式</td>
					<td>邮箱</td>
					
				</tr>
				<c:forEach items="${list }" var="p">
					<tr align="center">
						<td>${p.id }</td>
						<td>${p.username }</td>
						<td>${p.pasword }</td>
						<td>${p.mobile }</td>
						<td>${p.email }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
</html>