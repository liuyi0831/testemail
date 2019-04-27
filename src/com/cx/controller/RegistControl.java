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

	// ����������֤�룬�ɹ���
	@RequestMapping("/identy")
	@ResponseBody
	public String indenty(String email, HttpServletRequest request, Model model) {
		// �ж������ʽ�Ƿ���ȷ
		if (email.contains("@") && email.contains(".com") && email.length() > 10) {
			// ��Ҫ�ж��û��Ƿ�ע��
			if (userService.getUserByemail(email) != null) {
				// ���ע���򲻷�����֤��
				return "��������ע��";
			} else {
				// ���û��ע��������֤��
				HttpSession session = request.getSession(); // ����session
				session.setAttribute("code", sendemail(email)); // ��������֤��ŵ�session�б���
				session.setMaxInactiveInterval(60 * 3); // ��������3����
				return "�ʼ��ѷ��ͣ���ע�����";
			}
		}else {
			return "�����ʽ����";
		}
	}

	// �����ʼ�
	public String sendemail(String email) {
		String indentymsg = UUIDUtil.randomUUID().substring(0, 6);
		indentymsg.contains(email);
		System.out.println("��֤�룺" + indentymsg + " email " + email);
		try {
			HtmlEmail emailadd = new HtmlEmail();// ����һ��HtmlEmailʵ������
			emailadd.setHostName("smtp.qq.com");// �����SMTP������
			emailadd.setCharset("utf-8");
			emailadd.addTo(email);// �����ռ���
			emailadd.setFrom("1031351175@qq.com", "aa");// �����˵�����Ϊ�Լ��ģ��û������������
			emailadd.setAuthentication("1031351175@qq.com", "rfpufncrjjdpbcec");// ���÷����˵���������û�������Ȩ��
			emailadd.setSubject("��֤��");// ���÷�������
			emailadd.setMsg(indentymsg);// ���÷�������
			emailadd.send();// ���з���

		} catch (EmailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return indentymsg;
	}

}
