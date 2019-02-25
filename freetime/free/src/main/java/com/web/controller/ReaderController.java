package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.dao.reader;
import com.web.service.ReaderService;

@Controller
public class ReaderController {

	@Autowired
	private ReaderService readerService;
	
	@RequestMapping(value="findReader",method=RequestMethod.POST)
	public ModelAndView findReader(reader read,HttpSession session,@RequestParam(value="name")String name) {
		ModelAndView mv = new ModelAndView("user");
//		System.out.println(name);
		if(name.length() == 0) {
			session.setAttribute("msg", "不能为空！");
			session.removeAttribute("readerList");
		}else {
			List<reader> readerList = readerService.findReader(read);
			if(readerList.isEmpty()) {
				session.setAttribute("msg", "查无此人！");
			}else {
				session.removeAttribute("msg");
			}
			session.setAttribute("readerList", readerList);
		}
		return mv;
	}
	
	@RequestMapping(value="addReaderer",method=RequestMethod.POST)
	public ModelAndView addReader(reader read,HttpSession session) {
		ModelAndView mv = new ModelAndView("addReader");
		reader re = readerService.findIdByReader(read);
		if(re == null) {
			session.setAttribute("info", "添加成功");
			readerService.addReader(read);
			readerService.addUser(read);			
		}else {
			session.setAttribute("info", "已有该用户，请直接登录");
		}
		return mv;
	}
	
}
