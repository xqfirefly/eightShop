<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*"%> 
<%@ page import="java.text.*"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>Insert title here</title>
	</head>
	<body>
		<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="../img/sun.png" alt="天气" /></span>
    <b>${cookie.uname.value } 早上好，欢迎使用信息管理系统</b>
    <a href="indexsinfo.jsp">帐号设置</a>
    </div>
    
    <div class="welinfo">
    <span><img src="../img/time.png" alt="时间" /></span>
    <i>当前的系统时间是：<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %></i> （更换账号登录<a href="login.jsp">请点这里</a>）
    </div>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="../img/ico01.png" /><p><a href="#">管理设置</a></p></li>
    <li><img src="../img/ico02.png" /><p><a href="#">发布优惠</a></p></li>
    <li><img src="../img/ico04.png" /><p><a href="#">商品上传</a></p></li> 
    <li><img src="../img/ico06.png" /><p><a href="#">查询</a></p></li> 
            
    </ul>
 
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <b>信息管理系统使用指南</b>
    </div>
    
    <ul class="infolist">
    <li><span>您可以快速进删除不良用户操作</span><a href="/shope/showAll" class="ibtn">删除</a></li>
    <li><span>您可以快速发布商品</span><a href="/shope/padmin/indexadd.jsp" class="ibtn">发布商品</a></li>
    <li><span>您可以进行密码修改、账户设置等操作</span><a href="/shope/padmin/indexsinfo.jsp" class="ibtn">修改密码</a></li>
    </ul>

    </div>
	</body>
</html>