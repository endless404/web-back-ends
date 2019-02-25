package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.dao.reader;
import com.web.dao.users;
import com.web.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public ModelAndView login(users users,HttpSession session) {
		ModelAndView mv;
		users user = loginService.getUsers(users);
//		session.setAttribute("user", user);
		if(user != null) {
		String na = user.getName();
//		String pa = user.getPassword();&& pa.equals("123456")
			if(na.equals("root")) {
				mv = new ModelAndView("bookindex");
			}else {
				reader read = loginService.getReaderName();
				session.setAttribute("read", read);
				mv = new ModelAndView("user_login");
			}
		}else {
			mv = new ModelAndView("error");
		}
		return mv;
	}
	
	@RequestMapping(value="loginout")
	public ModelAndView loginout(HttpSession session) {
//		session.removeAttribute("user");
//		session.removeAttribute("read");
		ModelAndView mv = new ModelAndView("../../index");
		session.invalidate();
		return mv;
	}

	@RequestMapping(value="showPass",method=RequestMethod.GET)
	public ModelAndView showpass(String name,HttpSession session) {
		String na = (String) session.getAttribute(name);
		if(na.equals("root")) {
			String pass = loginService.showPassByNa(name);
			return new ModelAndView("forget","password",pass);
		}else {
			return new ModelAndView("error");
		}
	}
	
	@RequestMapping(value="updatePwd",method=RequestMethod.POST)
	public ModelAndView updatePwd(users user,@RequestParam("name")String name,@RequestParam("password")String password,HttpSession session) {
		ModelAndView mv = new ModelAndView("updatePwd");
		if(name.length() == 0 && password.length() == 0) {
			session.setAttribute("word", "用户名或密码不能为空！");
		}else {
			session.removeAttribute("word");
			users us = loginService.getName(user);
			if(us == null) {
				session.setAttribute("word", "用户名不存在！");
			}else if(password.length() == 0){			
				session.setAttribute("word", "密码不能为空！");
			}else {
				loginService.updatePassword(user);
				mv = new ModelAndView("upSuccess");
			}
		}
		return mv;
	}
	
}