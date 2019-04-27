<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>阳光好车</title>
<link rel="stylesheet" type="text/css" href="css/base.css"/>
<link rel="stylesheet" type="text/css" href="css/home.css"/>
<link rel="stylesheet" type="text/css" href="css/hurst.css"/>
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
    <div class="top-r"> <a href="#" id="b-regist">朱先生</a>|<a href="#" id="b-login" class="b-login">退出</a> </div>
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
<!--会员中心-->
<div class="mebBox">
		<div class="meb-cont clearfix mainbox">
			<div class="meb-nav fl dInline">
				<ul class="clearfix">
					<li class="on"><a href="会员中心.html">会员中心</a></li>
                    <li><a href="会员中心_我的需求.html">我的需求</a></li>
                    <li><a href="会员中心_账户管理.html">账户管理</a></li>				
                </ul>
			</div>
			<div class="meb-right fr dInline">
				<div class="mr-top">
    <div class="mr-top-div clearfix">
        <span class="fl">
            <img src="images/photo.png">
        </span>
        <div class="mr-infor fl dInline">
            <h2>中午好，尊敬的会员 <b>朱先生</b></h2>
            <p>
                手机：15138911875   邮箱：  |  [ <a href="#">管理账户信息</a> ]
            </p>
        </div>
    </div>
</div>
				<div class="mr-detail">
					<div class="mr-tab clearfix">
						<a class="on">我收藏的车型</a>
					</div>
					<div class="me-box">
                        <div class="me-dl" style="display: block;">
							<div class="me-one" id="me-four">
								<ul class="cs-list"><li class="clearfix" style="position: relative;">	<span class="carImg fl dInline"><a href="#" target="_blank"><div class="car_bg"> </div>		<img src="images/carinfor1.jpg" onerror="this.src='images/carinfor1.jpg'" width="300"></a>	</span>	<div class="carTxt fr dInline">		<h2><a href="#" target="_blank">奥迪A4L 2013 款 2.0T CVT 35TFSI 技术型</a></h2>		<p>			<span>上牌时间：2014-06</span> 			<span>行驶里程：0.8万公里</span>			<span>排量：2.0T</span>			<span>排放标准：</span>		</p>		<div class="price clearfix" style="margin:5px 0;">			<div class="fl dInline pNum">				<font>一口价</font><br>				<span class="num nBlue">28.2				</span><font> 万元</font>			 </div>			<span class="num1 fl" style="height:43px;padding-top:10px;"><em>新车价：40.14万元(含40140元购置税)</em><br>				为您节省：11.94万元 				<input type="hidden" class="CarValue_287" value="{img:'/',id:'224',price:'28.2',status:'',title:'奥迪A4L 2013 款 2.0T CVT 35TFSI 技术型',url:'#'}">			</span>		</div>		<div class="cs_bt clearfix">			<a href="#" class="cs-q">立即抢订</a>			<a href="javascript:void(0)" onclick="delNeedThis('287')">取消收藏</a>		</div>	</div></li></ul><div class="hPages">    </div>							</div>
						</div>
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
<script type="text/javascript">
$('.mr-tab a').each(function(index){
	$(this).click(function(){
		$(this).addClass('on').siblings().removeClass('on');
		$('.me-dl').eq(index).show().siblings().hide();
	})
});
$('.cs_ding a').mouseover(function(){
	this.style.color='blue';
})
$('.cs_ding a').mouseout(function(){
	this.style.color='#4573af';
})
function clsub(id){
	$('#memId').val(id);
	var url='/Member/getCardImg/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {id:id},
		dataType: "json",
		success: function(data){
			if(data.idcarda){
				document.getElementById("imgPreview1").src = data.idcarda;
			}else{
				document.getElementById("imgPreview1").src = 'images/qzx.jpg';
			}
			if(data.idcardb){
				document.getElementById("imgPreview2").src = data.idcardb;
			}else{
				document.getElementById("imgPreview2").src = 'images/qzx.jpg';
			}
		}
	});
	$overlay = $('.overlay');
	$overlay.addClass('active');
	 $('.popup-over').show().addClass('active');
	$overlay.click(function(){
		modalHidden($whichPopup);
	});
	var $whichPopup = $('.popup-over');
		$('.popup-over').show().addClass('active');
		$overlay.click(function(){
		modalHidden($whichPopup);
	});
	$('.overBtn').click(function(){
		modalHidden($whichPopup);
	});
	$whichPopup.click(function(e){
		e.stopPropagation();
	});
	function modalHidden($ele) {
		$ele.removeClass('active');
		$overlay.removeClass('active');
	}
	
}

function subc(){
	var postfile1=uploadIdForm.postfile1.value;
	var postfile2=uploadIdForm.postfile2.value;
    var memId=uploadIdForm.memId.value;
	var url='/Member/cardImg/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {postfile1:postfile1, postfile2:postfile2,memId:memId},
		dataType: "json",
		headers:{'ClientCallMode':'ajax'},
		data:$('#formid').serialize(),
		success: function(data){
			if(data.result=='1'){
				alert('添加成功');
			}else{
				alert('添加失败');
				window.location.reload();
			}
		}
	});
	return false;
}
$('.auth').click(function(){
	$('.ver_dialog').fadeIn();
})
$('.ui-dialog-close').click(function(){
	$('.ver_dialog').fadeOut();
})
$('#me-one .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'LSDZ'},
		success: function(data){
			$('#me-one').html(data);
		}
	});
	return false;
})
$('#me-tow .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'SELL'},
		success: function(data){
			$('#me-tow').html(data);
		}
	});
	return false;
})
$('#me-three .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'APPLY'},
		success: function(data){
			$('#me-three').html(data);
		}
	});
	return false;
})
$('#me-four .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'CONCERN'},
		success: function(data){
			$('#me-four').html(data);
		}
	});
	return false;
})
$('#me-o .hPages a').live('click',function(){
	var url=$(this).attr('href');
	$.ajax({
		type: "POST",
		url: url,
		data: {type:'ORDER'},
		success: function(data){
			$('#me-o').html(data);
		}
	});
	return false;
})
$('#p_closedziliao').click(function(){
	$('.overlay').removeClass('active');
})

function delNeed(act,meb){
	var url='/Member/delNeed/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {act:act,meb:meb},
		success: function(data){
			if(data.result){
				alert('已取消该需求');
				window.location.reload();
			}else{
				alert('需求操作失败');
				window.location.reload();
			}
		}
	});
	return false;
}
function delNeedThis(carid){
	var url='/Member/delCondent/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {carid:carid},
		success: function(data){
			if(data.result){
				alert('已取消该收藏');
				 window.location.href="/Member/need/channel/7/list/11/tpl/4";
			}else{
				alert('收藏取消失败');
			}
		}
	});
	return false;
}

function delOrder(act,meb){
	var url='/Member/delOrder/channel/7.html';
	$.ajax({
		type: "POST",
		url: url,
		data: {act:act,meb:meb},
		success: function(data){
			if(data.result){
				alert('已取消该订单');
				window.location.reload();
			}else{
				alert('订单取消失败');
			}
		}
	});
	return false;
}
</script>

</body>
</html>