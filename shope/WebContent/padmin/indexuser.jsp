<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台用户管理界面</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css"/>
	<script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript"></script>
	</head>
	<body>
		<div id="center">
			<jsp:include page="head.jsp"></jsp:include>
			<div id="middle">
				<jsp:include page="left.jsp"></jsp:include>
				 <div id="r1">
	  	  <div class="place">
		    <span>位置：</span>
		    <ul class="placeul">
		    <li>首页</li>
		    <li>用户管理</li>
		    </ul>
    	</div>
    
    <div class="rightinfo">
	    <table class="tablelist">
	    	<thead>
		    	<tr>
			        <th><input name="" type="checkbox" value="" checked="checked"/></th>
			        <th>编号<i class="sort"></i></th> 
			        <th>用户名</th>
			        <th>地址</th>
			        <th>邮编</th>
			        <th>电话</th>
			        <th>操作</th>
		        </tr>
	        </thead>
	        <tbody>
		        <tr>
			        <td><input name="" type="checkbox" value="" /></td>
			        <td>20130908</td>
			        <td>王金平幕僚：马英九声明字字见血 人活着没意思</td>
			        <td>admin</td>
			        <td>江苏南京</td>
			        <td>2013-09-09 15:05</td>
			        <td> <a href="#" class="tablelink"> 删除</a></td>
		        </tr> 
  
	        </tbody>
	    </table>
    </div>
	  
	  </div>
					
			</div>
			<div id="foot">
				<jsp:include page="foot.jsp"></jsp:include>
			</div>
			
		
		</div>
	</body>
</html>