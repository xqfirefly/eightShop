<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css"/>
    <script type="text/javascript" src="../js/jquery.js"></script>
	<script type="text/javascript">
		$(function(){	
			//导航切换
			$(".menuson li").click(function(){
				$(".menuson li.active").removeClass("active");
				$(this).addClass("active");
			});
			
			$('.title').click(function(){
				var $ul = $(this).next('ul');
				$('dd').find('ul').slideUp();
				if($ul.is(':visible')){
					$(this).next('ul').slideUp();
				}else{
					$(this).next('ul').slideDown();
				}
			});
		})	
</script>
	</head>
	<body>
	  <div id="main">
	    <div class="l1">
	    	<div class="lefttop"><span></span>菜单栏</div> 
	    	<dl class="leftmenu"> 
	    		<dd>
	    			<div class="title">
	   					<span><img src="../img/leftico01.png" /></span>管理信息
	    			</div>
	    			<ul class="menuson">
	        			<li class="active"><cite></cite><a href="index.jsp" target="backindexframe">&nbsp;&nbsp;&nbsp;首页模版</a><i></i></li>
	        			<li><cite></cite><a href="/shope/showUser" target="backindexframe">用户列表</a><i></i></li>
	        			<li><cite></cite><a href="/shope/showAll" target="backindexframe">商品列表</a><i></i></li>
	        			<li><cite></cite><a href="indexadd.jsp" target="backindexframe">添加商品</a><i></i></li>
	         			<li><cite></cite><a href="/shope/showMain" target="backindexframe">商品分类</a><i></i></li>
	         			<li><cite></cite><a href="/shope/showOrder" target="backindexframe">订单管理</a><i></i></li>
	        		</ul>    
	    		</dd>

			    <dd>
				    <div class="title">
				    	<span><img src="../img/leftico02.png" /></span>其他设置
				    </div>
				    <ul class="menuson">      
				        <li><cite></cite><a href="indexsinfo.jsp" target="backindexframe">管理员</a><i></i></li>
				    </ul>     
			    </dd> 
	 
	   		 </dl>
	    </div>
	    
	  </div>
		
	</body>
</html>