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
						<a href="javascript:void(0)" onclick="deleteP('${p.id}')">删除</a>
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