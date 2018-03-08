<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
	<head>
	<meta  charset="utf-8">
	<title>第八号店铺手机商城后台添加商品界面</title>
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
					    <li>添加商品</li>
					    </ul>
					    </div>
					    <div class="formbody">
					    <div class="formtitle"><span>基本信息</span></div>
					     <form action="/shope/updatePro" method="post" onsubmit="return checkform()">
					     <input type="hidden" name="id" value="${bean.id }"> 
						     <ul class="forminfo">
							    <li><label>商品名</label>
							    <input id="name" name="name" type="text" class="dfinput" value="${bean.name }"/>
							    <span id="name_msg"></span>
							    </li>
							    
							    <li><label>类别</label>
							    <input id="class_id" name="class_id" type="text" class="dfinput" value="${bean.class_id }"/>
							    <span id="class_id_msg"></span>
							    </li>
							    
							    <li><label>价格</label>
							    <input id ="price" name="price" type="text" class="dfinput" value="${bean.price }"/>
							    <span id="price_msg"></span>
							    </li>
							    
							    <li><label>库存量</label>
							    <input id="surplus_count" name="surplus_count" type="text" class="dfinput" value="${bean.surplus_count }"/>
							    <span id="sruplus_msg"></span>
							    </li>
							    
							    <li><label>关键词</label>
							    <input id="detail" name="detail" type="text" class="dfinput" value="${bean.detail }"/></li>
							    <li><label>&nbsp;</label>
							    	<input  type="submit" class="btn" value="确认修改" />
							    </li>
						    </ul>
					    </form>
					    </div>
				</div>
			</div>
		</div>
	</body>
	<script>
		function checkform(){
			var flag = true;
			//1.获取用户名和密码里面输入的内容
			var proname=document.getElementById("name").value;
			var proclass=document.getElementById("class_id").value;
			var proprice=document.getElementById("price").value;
			var procount=document.getElementById("surplus_count").value;
			var prodetail=document.getElementById("detail").value;
			//校验数据
			if(proname == null || proname== ""){
				var name_msg=document.getElementById("name_msg");
				alert("商品名称不能为空");
				name_msg.innerHTML="<font color='red'>&nbsp;&nbsp;&nbsp;&nbsp;商品名称不能为空</font>";
				flag=false;
			}else{
				if(proclass <= 0 ){
					alert("类别不合法");
					var name_msg=document.getElementById("class_id_msg");
					class_id_msg.innerHTML="<font color='red'>&nbsp;&nbsp;&nbsp;&nbsp;类别不合法</font>";
					flag=false;
				}else{
					if(proprice <=0){
						alert("价格不合法");
						var name_msg=document.getElementById("price_msg");
						price_msg.innerHTML="<font color='red'>&nbsp;&nbsp;&nbsp;&nbsp;价格不合法</font>";
						flag=false;
					}else{
						if(procount <=0){
							alert("库存不合法");
							var name_msg=document.getElementById("sruplus_msg");
							sruplus_msg.innerHTML="<font color='red'>&nbsp;&nbsp;&nbsp;&nbsp;库存不合法</font>";
							flag=false;
						}
					}
				}
			}
			return flag;
		}
	</script>
</html>