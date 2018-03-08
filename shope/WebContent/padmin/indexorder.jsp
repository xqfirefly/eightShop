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
					<td>订单编号</td>
					<td>购买用户id</td>
					<td>商品id</td>
					<td>订单地址编号</td>
					<td>订单状态</td>
					<td>操作</td>
				</tr>
				<c:forEach items="${list }" var="p">
					<tr align="center">
						<td>${p.id }</td>
						<td>${p.user_id }</td>
						<td>${p.pro_id }</td>
						<td>${p.address }</td>
						<td>
						<c:if test="${p.state ==1 }">
							待发货
						</c:if>
						<c:if test="${p.state ==2 }">
							已发货
						</c:if>
						</td>
						<td>
						<a href="/shope/getOrderByID?id=${p.id }">查看详情</a>|
						
						</td>
						
					</tr>
				</c:forEach>
			</table>
		</div>
	</body>
	<script type="text/javascript">
		//删除商品
		function deleteP(obj){
			//alert(obj);
			if(confirm("确定要删除本商品吗？")){
				//发送请求
				location.href="/shope/deletePro?id="+obj;
			}
		}
	</script>
</html>