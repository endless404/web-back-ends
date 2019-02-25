package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
	
	@RequestMapping(value="books")
	public ModelAndView books(HttpSession session) {
		session.invalidate();
		return new ModelAndView("book");
	}
	
	@RequestMapping(value="uppwd")
	public ModelAndView uppwd(HttpSession session) {
		session.invalidate();
		return new ModelAndView("updatePwd");
	}

	@RequestMapping(value="forget")
	public ModelAndView forget(HttpSession session) {
		session.invalidate();
		return new ModelAndView("forget");
	}
	
	@RequestMapping(value="user")
	public ModelAndView user(HttpSession session) {
		session.invalidate();
		return new ModelAndView("user");
	}
	
	@RequestMapping(value="addBorrow")
	public ModelAndView addBorrow(HttpSession session) {
		session.invalidate();
		return new ModelAndView("addBorrow");
	}
	
	@RequestMapping(value="add")
	public ModelAndView add(HttpSession session) {
		session.invalidate();
		return new ModelAndView("add");
	}
	
	@RequestMapping(value="addUser")
	public ModelAndView addUser(HttpSession session) {
		session.invalidate();
		return new ModelAndView("addReader");
	}
	
	@RequestMapping(value="upbook")
	public ModelAndView upbook(HttpSession session) {
		session.invalidate();
		return new ModelAndView("checkbookmsg");
	}
	
	@RequestMapping(value="upuser")
	public ModelAndView upuser(HttpSession session) {
		session.invalidate();
		return new ModelAndView("checkusermsg");
	}
	
	@RequestMapping(value="upcost")
	public ModelAndView upcost(HttpSession session) {
		session.invalidate();
		return new ModelAndView("more");
	}
}
