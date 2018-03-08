<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台管理界面</title>
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
    <li><a href="#">首页</a></li>
    <li><a href="#">账户管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    	<div id="usual1" class="usual"> 
    
   	 		<div class="itab">
  				<ul> 
    				<li><a href="#tab1" class="selected">修改信息</a></li> 
  				</ul>
   			 </div> 
    
  			 <div id="tab1" class="tabson">
   				<form action="/shope/changePass" method="post">
   				 <ul class="forminfo">
   					 <li><label>新密码<b>*</b></label><input name="password" type="text" class="dfinput"/></li>   
                     <li><label>权限等级<b>*</b></label>请联系管理员修改</li>
   					 <li><label>&nbsp;</label><input type="submit" class="btn" value="确认修改"/></li>
    			 </ul>
    			</form>
    		  </div> 
   
    	  </div>  
       
	</div> 
				</div>	
			</div>
			<div id="foot">
				<jsp:include page="foot.jsp"></jsp:include>
			</div>
			
		
		</div>
	</body>
</html>