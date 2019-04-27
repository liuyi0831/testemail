<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.2.1.js"></script>
	<script type="text/javascript">
	function send() {
		var input=document.getElementById("userEmail");
		var email=input.value;
		$.ajax({
			type:"get",
			url:"${pageContext.request.contextPath}/identy",
			data:{"email":email} ,
			 success:function(data) {
			    var second =120; // 剩余秒数
				var toDays = function(){
				return "剩余：" + second + "秒";
				}
				//然后写一个定时器
				window.setInterval(function(){
				 second --;
				 if (second<=0) {
					return "";
				}
				 document.getElementById("showTimes").innerHTML = toDays ();
				}, 1000);
				 $("#showTimes").show();
				 $("#getcode").val("已发送");
			    } 
		});
	}
	</script> 
<script type="text/javascript">
var second =getElementById("time").value/1000; // 剩余秒数
//然后写一个定时器
window.setInterval(function(){
 second --;
 document.getElementById("showTimes").innerHTML =second;
}, 1000);
</script>
<body>
<form action="${pageContext.request.contextPath}/regist"  method="post">
              <input class="input" name="userEmail" id="userEmail" type="text" placeholder="邮箱（登录帐号）"> <br>    
              <input class="input left" type="text"  name="verify" placeholder="输入验证码" style="width:100px;" />
              <div id="send">
              <input type="button" id="getcode" value="获取验证码" onclick="send()"> </div><br>
             <input type="hidden"  id="time" class="orderstatus" />
              <input class="input" type="text"  name="userName" placeholder="姓名"><br>
              <input type="radio" checked="checked" name="userSex" value="男" />
              男&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="userSex" value="女" />
              女 <br>
              <input  class="input" type="password" name="userPassword" placeholder="输入密码（六位字符）">
          <div class="login-button"><br>
            <input type="submit"  value="立即注册" class="fM"  />
          </div>
         <!---校验-->
         <p class="sell-phone-error" style="display:block;">请填写正确的手机号码</p>
        </form>
        <div id="showTimes"></div>
<script type="text/javascript">

	

</script>
</body>
</html>