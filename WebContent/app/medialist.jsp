<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>阳光好车</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
<link rel="stylesheet" type="text/css" href="css/home.css"/>
<link rel="stylesheet" type="text/css" href="city/city.css">
<script type="text/javascript" src="script/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="script/home_ban.js"></script>
<script type="text/javascript" src="script/eg_top_search.js"></script>
<script type="text/javascript" src="script/city.js"></script>
<script type="text/javascript" src="script/snncar.js"></script>
<script type="text/javascript">
$(function(){
	$('.navmenu li').hover(function(){
		$('span',this).stop().css('height','2px');
		$('span',this).animate({
			left:'0',
			width:'100%',
			right:'0'
		},200);
	},function(){
		$('span',this).stop().animate({
			left:'50%',
			width:'0'
		},200);
	});
});
</script>
<!--导航登陆网页版下拉-->
<script type="text/javascript">
$(function () {
	var setTime;
	$(".egc-top .nav-cent .operate").hover(function () {
		var _this = $(this);
		setTime = setTimeout(function () {
			_this.find(".sec-version").slideDown(200);
			_this.find("i").removeClass("icon-angle-down").addClass("icon-angle-up");
		}, 200);
	}, function () {
		if (setTime) {
			clearTimeout(setTime);
		}
		$(".egc-top .nav-cent .sec-version").slideUp(200);
		$(".egc-top .nav-cent .operate i").removeClass("icon-angle-up").addClass("icon-angle-down");
	});
});
</script>
<!--底部信息下拉-->
<script type="text/javascript">
$(function () {
	var wind_wd = $(window).width();
	if(wind_wd<=735){
		/* $submenu.first().delay(400).slideDown(700);*/
			$('.relate .tit').on('click', function() {
			$(this).next('.con').slideToggle()
			$(this).parent().siblings('.items').find('.con').slideUp();
			});
		}else{
			 $('.relate .tit').unbind("click");
			 $('.relate .con').show();
			}
	$(window).resize(function(){
 		var wind_wd = $(window).width();
		if(wind_wd<=735){
		/* $submenu.first().delay(400).slideDown(700);*/
			$('.relate .tit').on('click', function() {
			$(this).next('.con').slideToggle()
			$(this).parent().siblings('.items').find('.con').slideUp();
			});
		}else{
			 $('.relate .tit').unbind("click");
			 $('.relate .con').show();
			}
	});
});
</script>

<!--搜搜框获取焦点-->
<script type="text/javascript">
$(function () {
$('.sea-ipt-txt').focus(function() { 
$(this).addClass("on");
$('.search-btn').addClass("on"); 
}); 
$('.sea-ipt-txt').blur(function() { 
$(this).removeClass("on");
$('.search-btn').removeClass("on");
}); 
});
</script>
<!--下拉导航关闭-->
<script type="text/javascript">
$(function () {
 $('.menu-mb i').click(function() { 
   $(".navigation-mb-list").slideDown(300);
 }); 
 $('.navigation-mb-list .list-close-btn').click(function() { 
   $(".navigation-mb-list").slideUp(300);
 });
});
</script>
<!--stress搜索关闭-->
<script type="text/javascript">
$(function () {
	var setTime;
	$(".sercat .weixin").hover(function () {
		setTime = setTimeout(function () {
			$(".sercat .wxewm").show();
		}, 300);
	}, function () {
		if (setTime) {
			clearTimeout(setTime);
		}
		$(".sercat .wxewm").hide();
	});
});
</script>
<script type="text/javascript">
$(function () {
	var scroll_heitht = $('body').offset().top;
	var isShow = true;
	$(window).scroll(function () {
       if ($(window).scrollTop() > scroll_heitht && isShow) {
			 $('.stress-search-box').slideDown(200);
       }else{
		   $('.stress-search-box').slideUp(200);
		   }
       });
   $('.stress-close a').click(function(){
	   isShow=false;
	   $('.stress-search-box').slideUp(200).unbind(window,aa);
	   });
});
</script>
</head>
<body>
<div class="egc-top">
  <div class="nav-cent">
    <div class="top-r"> <a href="#" id="b-regist">注册</a>|<a href="#" id="b-login" class="b-login">登陆</a> </div>
    <div class="top-l">全国统一客服热线：400-877-9288</div>
    <div class="clear_fix"></div>
  </div>
</div>
<div class="navigation">
  <div class="nav-cent">
    <div class="logo"><a href="index.html"><img src="images/logo.png" width="240" /></a></div>
    <div class="city"> <span id="DY_site_name" class="red city-name Left">合肥</span>
      <div id="JS_hide_city_menu_11" class="city-select cut_handdler Left"> <a href="javascript:void(0);" class="common-bg selector">切换城市</a>
        <div id="JS_header_city_bar_box" class="hide_city_group">
          <div class="hideMap">
            <div class="showPanel clearfix">
              <div class="Left mycity">
                <div id="JS_current_city_box"> 当前城市：<strong id="JS_city_current_city">合肥</strong> </div>
                <div id="JS_default_city_delete" style="display: none;"></div>
              </div>
            </div>
            <div class="showPanel showPanel2 clearfix">
              <div class="hot_city" id="JS_header_city_hot"> </div>
              <div class="city_words mt10" id="JS_header_city_char"> </div>
            </div>
            <div class="scrollBody">
              <div class="cityMap clearfix">
                <table id="JS_header_city_list" class="city_list" style="margin-top: 0px;">
                  <tbody>
                  </tbody>
                </table>
              </div>
              <div class="scrollBar"> <span id="JS_header_city_bar" style="margin-top: 0px;"></span> </div>
            </div>
          </div>
        </div>
      </div>
      <span class="common-bg city-logo"></span> </div>
    <div class="sea">
      <div class="egc-sea-box">
        <input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车" />
        <a href="#" class="search-btn">搜索</a> </div>
    </div>
    <div class="hot-phone"> <i></i> <span class="js-change-phone">400-877-9288</span> </div>
  </div>
</div>
<ul class="navmenu">
  <li class="active"><a href="index.html">首页</a><span></span></li>
  <li><a href="list.html">我要买车</a><span></span></li>
  <li><a href="wymc.html">我要卖车</a><span></span></li>
  <li><a href="#">阳光联盟</a><span></span></li>
  <li><a href="#">我要加盟</a><span></span></li>
</ul>
<div class="clear_fix"></div>
<div class="stress-search-box row">
  <div class="stress-close"><a href="javascript:;"></a></div>
  <div class="nav-cents">
    <ul>
      <li class="logo"><a href="index.html"><img src="images/logo.png"  width="180"/></a></li>
      <li><a href="index.html">首页</a></li>
      <li><a href="list.html">我要买车</a></li>
      <li><a href="wymc.html">我要卖车</a></li>
      <li><a href="#">阳光联盟</a></li>
      <li><a href="#">我要加盟</a></li>
    </ul>
    <div class="seas">
      <div class="egc-sea-box">
        <input type="text" class="sea-ipt-txt" placeholder="搜索您想要的车">
        <a href="#" class="search-btn">搜索</a> </div>
    </div>
  </div>
</div>
<div class="clear_fix"></div>
<!--关于我们-->
<div class="aboutcon">
<div class="mainbox">
<div class="aside fl" id="J_m_nav">
    <!--side-nav-->
    <ul class="side-nav">
      <li class="active"><a href="about.html">关于我们</a></li>
      <li><a href="#">公司资质</a></li>
      <li><a href="newlist.html">网站公告</a></li>
      <li><a href="medialist.html">媒体报道</a></li>
      <li><a href="#">合作伙伴</a></li>
      <li><a href="contact.html">联系我们</a></li>
    </ul>    
  </div>
  <div class="section_about bdr fr">
    <div class="main_con">
      <div class="crumbs"><span>关于我们</span></div>
      <div class="reportslist">
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">揭秘创新产品设计里的风控经</a>
            </div>
            “在产品设计和风险控制方面，这三年是从零散状态到系统性形成控制风险和定义产品的制度和流程的过程。”严定贵表示只要能够良好地执行并瞄准小额分散市场，在未来发展中就不会……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">严定贵：能力要与创业方向匹配</a>
            </div>
            从IT工科男出生，到跨行业进军金融领域；从务实的技术员，到勇敢二度创业、追求创新的企业家，上海嘉银金融服务有限公司、“你我贷”创始人严定贵用那自己的人生经历给我们讲述了一……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">揭秘创新产品设计里的风控经</a>
            </div>
            “在产品设计和风险控制方面，这三年是从零散状态到系统性形成控制风险和定义产品的制度和流程的过程。”严定贵表示只要能够良好地执行并瞄准小额分散市场，在未来发展中就不会……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">严定贵：能力要与创业方向匹配</a>
            </div>
            从IT工科男出生，到跨行业进军金融领域；从务实的技术员，到勇敢二度创业、追求创新的企业家，上海嘉银金融服务有限公司、“你我贷”创始人严定贵用那自己的人生经历给我们讲述了一……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">揭秘创新产品设计里的风控经</a>
            </div>
            “在产品设计和风险控制方面，这三年是从零散状态到系统性形成控制风险和定义产品的制度和流程的过程。”严定贵表示只要能够良好地执行并瞄准小额分散市场，在未来发展中就不会……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">严定贵：能力要与创业方向匹配</a>
            </div>
            从IT工科男出生，到跨行业进军金融领域；从务实的技术员，到勇敢二度创业、追求创新的企业家，上海嘉银金融服务有限公司、“你我贷”创始人严定贵用那自己的人生经历给我们讲述了一……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">揭秘创新产品设计里的风控经</a>
            </div>
            “在产品设计和风险控制方面，这三年是从零散状态到系统性形成控制风险和定义产品的制度和流程的过程。”严定贵表示只要能够良好地执行并瞄准小额分散市场，在未来发展中就不会……
          </div>
        </div>
        <div class="item clearfix">
          <a href="newsinfor.html" class="img"><img src="images/img10.jpg"></a>
          <div class="txt">
            <div class="hd clearfix">
              <span class="fr"><i class="time">2016-12-12</i></span>
              <a href="newsinfor.html">严定贵：能力要与创业方向匹配</a>
            </div>
            从IT工科男出生，到跨行业进军金融领域；从务实的技术员，到勇敢二度创业、追求创新的企业家，上海嘉银金融服务有限公司、“你我贷”创始人严定贵用那自己的人生经历给我们讲述了一……
          </div>
        </div>
      </div>
      <div class="Pagination">
        <a href="#" class="prev"><em></em>上一页</a><span>1</span><a href="#">2</a><a href="#">3</a><a href="#">4</a>...<a href="#">23</a><a href="#" class="next">下一页<em></em></a>
      </div>
    </div>
  </div>
</div>
</div>
<div class="clear_fix"></div>
<!--底部-->
<div class="ftWrap">
  <div class="foot">
    <div class="cent">
      <div class="relate">
        <div class="items">
          <div class="tit"><i class="icon-angle-right"></i>交易帮助</div>
          <div class="con"> <a href="#">买车帮助</a> <a href="#">卖车帮助</a> <a href="#">过户帮助</a> </div>
        </div>
        <div class="items">
          <div class="tit"><i class="icon-angle-right"></i>客服中心</div>
          <div class="con"> <a href="abut.html">网站合作</a> <a href="about.html">关于我们</a> <a href="contact.html">联系我们</a> </div>
        </div>
        <div class="items">
          <div class="tit"><i class="icon-angle-right"></i>购车指南</div>
          <div class="con"> <a href="#">购车帮助</a></div>
        </div>
        <div class="app-section"> <img class="js-delayed-img"  src="images/f_wx.jpg">
          <div class="title">扫码关注微信</div>
          <p> 随时随地，秒杀好车<br />
            优质个人二手车 </p>
        </div>
        <div class="items last">
          <div class="tel">
            <h1>400-877-9288</h1>
            <p>周一至周日 8:00-18:00</p>
            <p>免费咨询(咨询、建议、投诉)</p>
            <a href="#" class="kf"><i class="kf-icon"></i>在线客服</a> </div>
          <div class="tel-mb">
            <p><span>400-710-8886</span>周一至周日 8:00-18:00(仅收市话费)</p>
            <a href="#" class="kf"><i class="kf-icon"></i>在线客服</a> </div>
        </div>
      </div>
    </div>
  </div>
  <div class="copyright">
    <div class="cent"> Copyright © 2016-2017, snncar.com,All Rights Reserved 皖ICP备16022456号-1</div>
  </div>
</div>
<script type="text/javascript" src="script/3c-menu.js"></script> 
<script type="text/javascript" src="script/lg_reg.js"></script> 
<!--会员登录和注册弹出框开始-->
<div id="popBox">
  <div class="popCont"> <a class="p_closed">关闭</a>
    <div class="p-tab"> <a>会员登录<i></i></a><a>会员注册<i></i></a> </div>
    <div class="p-detail">
      <div class="p-dl">
        <form onsubmit="return check();" enctype="multipart/form-data" method="post" name="form" id="form">
          <ul class="login-items">
            <li>
              <label>用户名(手机号)</label>
              <input class="input" type="text" value="" maxlength="32"  name="username" placeholder="请输入您的手机号">
            </li>
            <li>
              <label>密码</label>
              <input class="input" type="password" value="" maxlength="16"  name="password">
            </li>
          </ul>
          <div class="login-check">
            <input type="checkbox" name="checkbox" style=" width:auto;" />
            <label>记住我</label>
            <a href="Meet/editPass">忘记登录密码？</a> </div>
          <div class="login-button">
            <input type="hidden" value="" name="carid" class="ordercarid" />
            <input type="hidden" value="" name="carstatus" class="orderstatus" />
            <input type="button"  value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM" onclick="$('#form').submit()" />
          </div>
        </form>
      </div>
      <div class="p-dl">
        <form class="registForm" onsubmit="return regcheck();" enctype="multipart/form-data" method="post" name="reg" id="reg">
          <ul class="login-items">
            <li class="clearfix">
              <input class="input" name="mobile" id="mobile" type="text" value="" placeholder="手机号码（登录帐号）">
            </li>
            <li class="clearfix">
              <input class="input left" type="text" value=""  name="verify" placeholder="输入验证码" style="width:100px;" />
              <div id="send"><a href="#" class="send_code right">获取验证码</a></div>
            </li>
            <li class="clearfix">
              <input class="input" type="text" value=""  name="realname" placeholder="姓名">
            </li>
            <li class="clearfix sex">
              <input type="radio" checked="" name="gender" value="M" />
              男&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" value="F" />
              女 </li>
            <li class="clearfix">
              <input id="" class="input" type="password" name="password" value="" placeholder="输入密码（六位字符）">
            </li>
          </ul>
          <div class="login-button">
            <input type="hidden" value="" name="carid" class="ordercarid" />
            <input type="hidden" value="" name="carstatus" class="orderstatus" />
            <input type="button"  value="立即注册" class="fM" onclick="$('#reg').submit()" />
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--会员登录和注册弹出框结束-->
<script type='text/javascript' >
			var nt = !1;
			$(window).bind("scroll",
				function() {
				var st = $(document).scrollTop();//往下滚的高度
				nt = nt ? nt: $("#J_m_nav").offset().top;
				// document.title=st;
				var sel=$("#J_m_nav");
				if (nt < st) {
					sel.addClass("nav_fixed");
				} else {
					sel.removeClass("nav_fixed");
				}
			});
		</script>

</body>
</html>