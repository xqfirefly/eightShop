<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
					<table border="1px" align="center" class="tablelist">
					<tr>
						<td colspan="7">
							<form action="/shope/findProByCondition" method="post"> 
								商品名称:<input name="name">&nbsp;&nbsp;&nbsp;&nbsp;关键词:<input name="kw">&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="submit" value="查询">
							</form>
						</td>
						<td colspan="1" align="right">
							<input type="button" value="删除选中" onclick="delCheck()">
						</td>
					</tr>
					
						<tr align="center">
							<td><input type="checkbox" onclick="checkAll(this)"></td>
							<td>id</td>
							<td>名称</td>
							<td>价格</td>
							<td>剩余量</td>
							<td>销售量</td>
							<td>商品描述</td>
							<td>添加时间</td>
							<td>操作</td>
						</tr>
					
					<tbody class="sort">
						<form id="formId" action="/shope/deleteCheck" method="post">
							<c:forEach items="${list }" var="p">
								<tr align="center">
									<td width='1%'><input type="checkbox" name="pid" value="${p.id }"></td>
									<td>${p.id }</td>
									<td>${p.name }</td>
									<td>${p.price }</td>
									<td>${p.surplus_count }</td>
									<td>${p.saled_count }</td>
									<td>${p.detail }</td>
									<td>${p.cdate }</td>
									<td>
									<a href="/shope/getProByID?id=${p.id }">修改</a>|
									<a 
									href="javascript:void(0)" onclick="deleteP('${p.id}')">删除</a>
									</td>
								</tr>
							</c:forEach>
						</form>
					</tbody>
					</table>
				</div>
				</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
	
	//删除商品
	function deleteP(obj){
		//alert(obj);
		if(confirm("确定删除此商品吗?")){
			//发送请求
			location.href="/shope/deletePro?id="+obj;
		}
	}
	
	//全选
	function checkAll(obj){
		//获取所有的复选框
		var arr=document.getElementsByName("pid");
		
		//遍历数组 修改选中状态
		for(var i=0;i<arr.length;i++){
			arr[i].checked=obj.checked;
		}
	}
	
	//删除选中
	function delCheck(){
		//提交表单
		document.getElementById("formId").submit();
	}
</script>
</html>