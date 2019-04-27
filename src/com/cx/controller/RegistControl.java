package com.cx.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.cx.pojo.UUIDUtil;
import com.cx.pojo.User;
import com.cx.service.UserService;

@Controller
public class RegistControl {
	@Autowired
	private UserService userService;

	@RequestMapping("/regist")
	public String regist(User user, String verify, HttpServletRequest request, String showTimes) {
		System.out.println(user);
		System.out.println("verify:" + verify);
		System.out.println("times" + showTimes);
		HttpSession session = request.getSession();
		if (verify.equals(session.getAttribute("code"))) {
			return "1";
		}
		return "fail";
	}

	// 发送邮箱验证码，成功。
	@RequestMapping("/identy")
	@ResponseBody
	public String indenty(String email, HttpServletRequest request, Model model) {
		// 判断邮箱格式是否正确
		if (email.contains("@") && email.contains(".com") && email.length() > 10) {
			// 先要判断用户是否注册
			if (userService.getUserByemail(email) != null) {
				// 如果注册则不发送验证码
				return "该邮箱已注册";
			} else {
				// 如果没有注册则发送验证码
				HttpSession session = request.getSession(); // 设置session
				session.setAttribute("code", sendemail(email)); // 将短信验证码放到session中保存
				session.setMaxInactiveInterval(60 * 3); // 缓存设置3分钟
				return "邮件已发送，请注意查收";
			}
		}else {
			return "邮箱格式错误";
		}
	}

	// 发送邮件
	public String sendemail(String email) {
		String indentymsg = UUIDUtil.randomUUID().substring(0, 6);
		indentymsg.contains(email);
		System.out.println("验证码：" + indentymsg + " email " + email);
		try {
			HtmlEmail emailadd = new HtmlEmail();// 创建一个HtmlEmail实例对象
			emailadd.setHostName("smtp.qq.com");// 邮箱的SMTP服务器
			emailadd.setCharset("utf-8");
			emailadd.addTo(email);// 设置收件人
			emailadd.setFrom("1031351175@qq.com", "aa");// 发送人的邮箱为自己的，用户名可以随便填
			emailadd.setAuthentication("1031351175@qq.com", "rfpufncrjjdpbcec");// 设置发送人到的邮箱的用户名和授权码
			emailadd.setSubject("验证码");// 设置发送主题
			emailadd.setMsg(indentymsg);// 设置发送内容
			emailadd.send();// 进行发送

		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return indentymsg;
	}

}
