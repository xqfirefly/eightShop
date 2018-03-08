<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台登录界面</title>
	<link rel="stylesheet" type="text/css" href="../css/loginStyle.css"/>
	<script type="text/javascript"></script>
	</head>
	<body>
		<div id="center">
    	<div id="head">
        	<img src="../img/tu.png"/>
            <div class="tx"> 为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起用户需绑定手机。如您还未绑定，请尽快完成，感谢您的理解及支持！
			</div>
        
        </div>
        <div id="main">
        <form action="/shope/backLogin" method="post">
        	<div class="xx">  
            	<div class="sp"> 账户登录</div>
                <img src="../img/y.png" class="spi">
                <input type="text" name="username" value="用户名" id="spin1" >
                <br>
                <br>
                <img src="../img/m.png" class="spi">
                <input type="text" name="password" value="密码" id="spin2">
                <br><br><br>
                <input name="" type="checkbox" value="" checked="checked" id="spin3"/><span>记住用户名</span>
                <input name="" type="checkbox" value="" checked="checked" id="spin4"/><span class="c">记住密码</span>
                <br><br>
                <div class="sps">
                	<input type="submit" value="登录"/>
                </div>
                <a href="#" class="a1">忘记密码</a>
                <a href="login.html" class="a2">立即注册</a>
            </div>
        	</form>
        </div>
        <div id="foot">
        	<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@2016&nbsp;&nbsp;  第八号店铺MP&nbsp; 版权所有 &nbsp;&nbsp;   制作者:祁雪倩<br>组号:4&nbsp; 组长:赵新宇&nbsp; 组员:杨琳茹 &nbsp;祁雪倩 &nbsp;赵敏 &nbsp;尹赛涛 &nbsp;贾益伟</span>
    	</div>
     </div>
     
     <script>
	
		var spin1=document.getElementById("spin1");
		spin1.onclick=function(){
			spin1.value="";
		}
		var spin2=document.getElementById("spin2");
		spin2.onclick=function(){
			spin2.value="";
			spin2.type="password";
		}
	
		


	</script>
	</body>
</html>