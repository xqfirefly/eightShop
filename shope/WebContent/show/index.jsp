<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
  <meta charset="utf-8">
  <title>八号店铺-正品低价、品质保障、配送及时、轻松购物!</title>
  <link rel="shortcut icon"  href="fac.ico">
  <link rel="stylesheet" type="text/css" href="base.css">
  
  <script type="text/javascript" src="index.js"></script>

  </head>      
  <body>
      <!-- site-nav部分start -->
     <div class="site-nav">
       <div class="w">
         <div class="fl">
          <div id="site-nav-send">
            送至：天津
              <i><s>◇</s></i>
            </div>
          
          <div id="site-nav-city">
             <ul>
              <li id="li1"><a href="#">北京</a></li>
              <li><a href="#">上海</a></li>
              <li><a href="#">广州</a></li>
            </ul>
            <ul>
              <li><a href="#">石家庄</a></li>
              <li><a href="#">唐山</a></li>
              <li><a href="#">保定</a></li>
            </ul>
            <ul>
              <li><a href="#">洛阳</a></li>
              <li><a href="#">沈阳</a></li>
              <li><a href="#">哈尔滨</a></li>
            </ul>
          </div>
         </div>
         <div class="fr site-nav-r">
           <ul>
            <li>
            <c:if test="${cookie.username.value==null }">
                <a href="login.html">免费注册</a>&nbsp;
              <a href="land.html">请登录</a>
            </c:if>
            <c:if test="${cookie.username.value!=null }">
                ${cookie.username.value }欢迎回来
            </c:if>
            </li>
            <li class="line"></li>
            <li><a href="#">我的订单</a></li>
            <li class="line"></li>
            <li id="oli2">
                <a href="#">我的收藏</a>
            </li>
               
            <li class="line"></li>
            <li><a href="#">店铺会员</a></li>
            <li class="line"></li>
            <li><a href="personcenter.html">个人中心</a></li>
            <li class="line"></li>
            <li class=" tel">
                <a href="#">八号店铺</a>
                <span></span>
            </li>
            <li class="line"></li>
            <li>
                关注店铺
            </li>
            <li class="line"></li>
            <li>
                客服服务
            </li>
            <li class="line"></li>
            <li>
                网站导航
            </li>
           </ul>
         </div>
         <div id="site-nav-r-hide">
               <ul>
                <li><a href="#">收藏的宝贝</a></li>
                <li><a href="#">收藏的店铺</a></li>
               </ul>             
         </div>
       </div>
     </div>
     <!-- site-nav部分end -->


     <!-- search部分的start-->
     <div class="w clearfix">
        <div class="search-logo">
           <a href="#" title="第八号店铺">八号店铺</a>
        </div>
        <div class="search-input">
           <input type="text" value="小米手机">
           <button>搜索</button>
        </div>
        <div class="search-car">
           <a href="#">我的购物车</a>
           <i class="icon1"></i>
           <i class="icon2">&gt;</i>
           <i class="icon3">0</i>
        </div>
        <div class="search-morelink">
          <a href="#" class="col-red">手机新品</a>
          <a href="#">红米Note</a>
          <a href="#">魅蓝</a>
          <a href="#">夏普</a>
          <a href="#">荣耀V9</a>
          <a href="#">OPPO R9</a>
          <a href="#">华为手机</a>
          <a href="#">iphone7</a>
        </div>
     </div>
     <!-- search部分的end-->

     <!-- shortcut-nav部分的start-->
     <div class="shortcut-nav">
        <div class="w">
          <div class="shortcut-nav-menu">
            <div class="shortcut-nav-menu-all">
              <a href="#">手机分类</a>
            </div>
            <div class="shortcut-nav-menu-one">
              <div id="shortcut-nav-menu-one1">
                <h3>
                   <a href="#">热门推荐</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">一加五</a>
                 <a href="#">TFBOYS</a>
                 <a href="#">小米</a>  
                 <a href="#">魅蓝</a>
                 <a href="#">moto</a>
                 <a href="#">荣耀</a>
               </h4>              
              </div>
              <div id="shortcut-nav-menu-one11">
                <h3>
                   <a href="#">热门关注</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">cool</a>
                 <a href="#">金立S10</a>
                 <a href="#">小米</a>  
                 <a href="#">魅蓝</a>
                 <a href="#">moto</a>
                 <a href="#">荣耀9</a>
               </h4> 
               <h3>
                   <a href="#">热门单品</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">三星S8</a>
                 <a href="#">锤子</a>
                 <a href="#">诺基亚</a>  
                 <a href="#">vivo X9</a>
                 <a href="#">360手机</a>
                 <a href="#">一加五</a>
               </h4>      
               <h3>
                   <a href="#">精选品牌</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">Apple</a>
                 <a href="#">小米</a>
                 <a href="#">荣耀</a>  
                 <a href="#">魅族</a>
                 <a href="#">华为</a>
                 <a href="#">联想</a>
               </h4> 
               <h3>
                   <a href="#">经典品牌</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">vivo</a>
                 <a href="#">金立</a>
                 <a href="#">小米</a>  
                 <a href="#">酷派</a>
                 <a href="#">moto</a>
                 <a href="#">诺基亚</a>
               </h4>                   
              </div>
              <div id="shortcut-nav-menu-one2">
                <h3>
                   <a href="#">手机通讯</a>
                </h3>
                <i>></i>
                <h4>
                 <a href="#">全部手机</a>
                 <a href="#">老人机</a>
                 <a href="#">双卡双待</a>  
                 <a href="#">快速充电</a>
                 <a href="#">拍照神器</a>
                 <a href="#">指纹识别</a>
               </h4>    
              </div>
              <div id="shortcut-nav-menu-one22">
                <h3>
                   <a href="#">价位段</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">500以下</a>
                 <a href="#">500-1000</a>
                 <a href="#">1000-1800</a>  
                 <a href="#">1800-2500</a>
                 <a href="#">2500以上</a>
               </h4> 
               <h3>
                   <a href="#">网络制式</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">移动4G</a>
                 <a href="#">联通4G</a>
                 <a href="#">电信4G</a>  
               </h4>      
               <h3>
                   <a href="#">系统</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">Android</a>
                 <a href="#">IOS</a>
                 <a href="#">微软</a>                 
               </h4> 
               <h3>
                   <a href="#">屏幕</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">5.6英寸</a>
                 <a href="#">5.1-5.5</a>
                 <a href="#">4.6-5.0</a>          
               </h4>                   
              </div>
              <div id="shortcut-nav-menu-one3">
                <h3>
                   <a href="#">运营商</a>
                </h3>
                <i>></i>
                <h4>
                 <a href="#">营业厅</a>
                 <a href="#">选号码</a>
                 <a href="#">4G套餐</a>  
                 <a href="#">买手机</a>
                 <a href="#">装宽带</a>
                 <a href="#">iphone7</a>
               </h4>    
              </div>
              <div id="shortcut-nav-menu-one33">
                <h3>
                   <a href="#">特色推荐</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">iPhone7</a>
                 <a href="#">红包卡</a>
                 <a href="#">送</a>  
                 <a href="#">免流量</a>
                 <a href="#">1元1G</a>
                 <a href="#">不限量卡</a>
               </h4> 
               <h3>
                   <a href="#">中国移动</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">旗舰店</a>
                 <a href="#">超值套餐</a>
                 <a href="#">合约机</a>  
                 <a href="#">号卡</a>             
               </h4>      
               <h3>
                   <a href="#">中国联通</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">旗舰店</a>
                 <a href="#">选号码</a>
                 <a href="#">合约机</a>  
                 <a href="#">自由组合</a>
                 <a href="#">装宽带</a>
               </h4> 
               <h3>
                   <a href="#">中国电信</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">旗舰店</a>
                 <a href="#">选号码</a>
                 <a href="#">合约机</a>  
                 <a href="#">个人定制</a>
                 <a href="#">装宽带</a>
               </h4>                   
              </div>
              <div id="shortcut-nav-menu-one4">
                <h3>
                   <a href="#">手机配件</a>
                </h3>
                <i>></i>
                <h4>
                 <a href="#">移动电源</a>
                 <a href="#">蓝牙耳机</a>
                 <a href="#">手机壳</a>  
                 <a href="#">手机贴膜</a>
                 <a href="#">数据线</a>
                 <a href="#">手机支架</a>
               </h4>    
              </div>
              <div id="shortcut-nav-menu-one44">
                <h3>
                   <a href="#">热门关注</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">充电宝</a>
                 <a href="#">配件选购</a>
                 <a href="#">新年定制</a>  
                 <a href="#">二合一线</a>
                 <a href="#">定制款</a>
               </h4> 
               <h3>
                   <a href="#">热门分类</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">手机壳</a>
                 <a href="#">数据线</a>
                 <a href="#">手机支架</a>  
                 <a href="#">钢化膜</a>
                 <a href="#">自拍神器</a>
               </h4>      
               <h3>
                   <a href="#">精选品牌</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">罗马仕</a>
                 <a href="#">洛克</a>
                 <a href="#">GY</a>  
                 <a href="#">倍思</a>
                 <a href="#">景为</a>
                 <a href="#">奢姿</a>
               </h4> 
               <h3>
                   <a href="#">经典品牌</a>
                </h3>
                <i>></i>               
                 <h4>
                 <a href="#">爱国者</a>
                 <a href="#">紫米</a>
                 <a href="#">倍斯特</a>  
                 <a href="#">图拉斯</a>
                 <a href="#">美壳壳</a>
               </h4>                   
              </div>
            </div>
          </div>
          <div class="shortcut-nav-items">
             <ul>
               <li><a href="#">精选卖家</a></li>
               <li><a href="#">手机营业厅</a></li>
               <li><a href="#">新iPhone尚</a></li>
               <li><a href="#">玩3C</a></li>
               <li><a href="#">配件选购</a></li>
               <li><a href="#">以旧换新</a></li>
               <li><a href="#" class="col-red">手机社区</a></li>
             </ul>
          </div>
          <div class="shortcut-nav-r">
            <a href="#">☆关注频道</a>
          </div>
        </div>
     </div>
     <!-- shortcut-nav部分的end-->


     <!-- main部分的start-->
     <div class="w main clearfix">
       <div id="main-slider">
          <a href="#">
            <img id="img1" src="images/silder1.jpg">
          </a>
          <ul id="oul">
              <li style="background:rgb(234, 124, 28) none repeat scroll 0% 0%;"></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
              <li></li>
          </ul>
          <div id="arrow">
            <a id="arrow-left" href="javascript:;">&lt;</a>
            <a id="arrow-right" href="javascript:void(0)">&gt;</a>
          </div>
         </div>
         <div class="main-news">
           <div class="main-news-top">
             <div class="main-news-top-title">
                 <h2>手机排行</h2>
                <a href="#">更多&gt;</a>
             </div>
             <div class="main-news-top-content">
               <ul>
                  <li><a href="#"><span>[公共]</span>小米手机</a></li>
                  <li><a href="#"><span>[公告]</span>华为手机</a></li>
                  <li><a href="#"><span>[公告]</span>oppo手机</a></li>
                  <li><a href="#"><span>[公告]</span>vivo手机</a></li>
                  <li><a href="#"><span>[公告]</span>三星手机</a></li>
                </ul>
             </div>
           </div>
           <div class="main-news-foot">
              <ul>
                <li>
                   <a href="#"><img src="images/meizu.jpg" height="90" width="80"></a>
                </li>
                <li>
                   <a href="#"><img src="images/nuojiya.png"></a>
                </li>
                <li>
                   <a href="#"><img src="images/oppo.jpg"></a>
                </li>
                <li>
                   <a href="#"><img src="images/huawei.jpg"></a>
                </li>
                <li>
                   <a href="#"><img src="images/rongyao.jpg"></a>
                </li>
                <li>
                   <a href="#"><img src="images/sanxing.jpg"></a>
                </li>
                <li>
                   <a href="#"><img src="images/suoni.png"></a>
                </li>
                <li>
                   <a href="#"><img src="images/vivo.jpg"></a>
                </li>
                <li>
                   <a href="#"><img src="images/xiaomi.jpg"></a>
                </li>
              </ul>
           </div>
         </div>
     </div>
     <!-- main部分的end-->

     <!--hotsale部分的start-->
     <div class="w clearfix hotsale">
       <div class="hotsale-top">
         <a href="#">热卖商品</a>
       </div>
       <div class="hotsale-line">
         
       </div>
       <div class="hotsale-foot">
         <ul>
           <li>
              <a href="hongmi.html">
                 <img src="images/hongmi5.jpg">
                 <P>$999.00</P>
                 <p>红米手机</p>
              </a>
               
           </li>
           <li>
               <a href="oppor11.html">
                  <img src="images/oppor11.jpg">
                  <P>$1799.00</P>
                  <p>oppoR11手机</p>
               </a>
            </li>
           <li>
              <a href="oppoa7.html">
                  <img src="images/oppoA77.jpg">
                  <P>$1889.00</P>
                  <p>oppoA7手机</p>
              </a>
           </li>
           <li>
              <a href="rongyao.html">
                  <img src="images/rongyao9.jpg">
                  <P>$2199.00</P>
                  <p>荣耀手机</p>
              </a>
            </li>
           <li>
               <a href="vizza.html">
                   <img src="images/vizza.jpg">
                   <P>$1639.00</P>
                  <p>vizza手机</p>
              </a>
            </li>
         </ul>
       </div>
     </div>
     <!--hotsale部分的end-->

     <!--foot部分的start-->
     <div class="foot">
        <div class="foot-top">
          <div class="foot-top-img">
             <span class="foot-top-img-icon foot-top-img-icon1"><img src="images/slogan1.png" height="54" width="220"></span>
             <span class="foot-top-img-icon foot-top-img-icon2"><img src="images/slogan2.png" height="54" width="220"></span>
             <span class="foot-top-img-icon foot-top-img-icon3"><img src="images/slogan3.png" height="54" width="220"></span>
             <span class="foot-top-img-icon foot-top-img-icon4"><img src="images/slogan4.png" height="54" width="220"></span>
          </div>
          <div class="w clearfix foot-top-shop">
            <dl>
              <dt><a href="#">购物指南</a></dt>
              <dd><a href="#">购物流程</a></dd>
              <dd><a href="#">会员介绍</a></dd>
              <dd><a href="#">生活旅行</a></dd>
            </dl>
            <dl>
              <dt><a href="#">配送方式</a></dt>
              <dd><a href="#">上门自提</a></dd>
              <dd><a href="#">配送服务查询</a></dd>
              <dd><a href="#">海外配送</a></dd>
            </dl>
            <dl>
              <dt><a href="#">支付方式</a></dt>
              <dd><a href="#">支付宝</a></dd>
              <dd><a href="#">微信</a></dd>
              <dd><a href="#">银行卡</a></dd>
            </dl>
            <dl>
              <dt class="last-dl"><a href="#">售后服务</a></dt>
              <dd><a href="#">售后客服</a></dd>
              <dd><a href="#">联系客服</a></dd>
              <dd><a href="#">常见问题</a></dd>
            </dl>
            <div class="coverage">
              <p>店铺已向全国2654个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
                  <a href="#">查看详情&gt;</a>
            </div>
          </div>
        </div>
        <div class="w foot-bottom">
            <div class="foot-bottom-link">
                <a href="#">关于我们</a>|
                <a href="#">联系我们</a>|
                <a href="#">联系客服</a>|
                <a href="#">商家入驻</a>|
                <a href="#">营销中心</a>|
                <a href="#">友情链接</a>|
                <a href="#">销售联盟</a>|
                <a href="#">English Site</a>|
                <a href="#">Contact Us</a>
            </div>
            <div class="foot-bottom-copy">
                <img src="images/gh.png"/>京公网安备 11000002000088号  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号<br>
                互联网出版许可证编号新出网证(京)字150号  |  出版物经营许可证  |  网络文化经营许可证京网文[2014]2148-348号  |  违法和不良信息举报电话：4006561155<br>
                Copyright © 2017.9.8  版权所有 14计本杨琳茹  |  消费者维权热线：4006067733<br>
               
            </div>
        </div>
     </div>
     <!--foot部分的end-->
  </body>
  </html>