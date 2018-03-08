<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>Shop8</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css"/>
	<script type="text/javascript"></script>
	</head>
	<body>
		<div id="head">
			<div class="topleft">
			    <a href="index.jsp" target="backindexframe"><img src="../img/tu.png" title="系统首页" /></a>
			</div>
			        
			<div class="topright">    
			    <ul>
			    <li><a href="login.jsp" target="_parent">退出</a></li>
			    </ul>
			     
			    <div class="user">
			    <span>${cookie.uname.value },欢迎登录</span>
			 	</div>    
    
    		</div>
		</div>
    
</body>
</html>