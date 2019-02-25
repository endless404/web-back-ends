package com.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.dao.books;
import com.web.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value="findBook",method=RequestMethod.POST)
	public ModelAndView findBook(books book,HttpSession session,@RequestParam(value="bookname")String bookname) {
		ModelAndView mv = new ModelAndView("book");
//		System.out.println(bookname);
		if(bookname.length() == 0) {
			session.setAttribute("alert", "搜索内容不能为空");
			session.removeAttribute("bookList");
		}else {
			List<books> bookList = bookService.findBookByName(book);
			if(bookList.get(0).getPricture() == 0) {
				session.setAttribute("alert", "图书馆已没有该图书，无法借阅");
			}else {
				session.removeAttribute("alert");
			}
			session.setAttribute("bookList", bookList);
		}
		return mv;
	}

	@RequestMapping(value="addBook")
	public ModelAndView addBook(books book,HttpSession session) {
		ModelAndView mv = new ModelAndView("add");
		book.setBookname("《"+book.getBookname()+"》");
		books boName = bookService.findByBook(book);
		books boId = bookService.findBookBy(book);
		if(boName == null && boId == null) {
			bookService.addBook(book);
		}else {
			session.setAttribute("msg", "该图书馆已有此书");
		}
		return mv;
	}
	
	@RequestMapping(value="findidBook",method=RequestMethod.POST)
	public ModelAndView findidBook(books book,HttpSession session,@RequestParam(value="bookname")String bookname) {
		ModelAndView mv = new ModelAndView("checkbookmsg");
		if (bookname.length() == 0) {
			session.setAttribute("alert", "搜索内容不能为空！");
			session.removeAttribute("bookList");
		} else {
			List<books> bookList = bookService.findBookByName(book);
			if(bookList.isEmpty()) {
				session.setAttribute("alert", "图书馆内没有此书！");
			}else {
				session.setAttribute("bookList", bookList);			
			}
		}
		return mv;
	}

	@RequestMapping(value="changeBook")
	public ModelAndView checkBook(books book,HttpSession session) {
		ModelAndView mv = new ModelAndView("checkbookmsg");
		bookService.changeBook(book);
		session.setAttribute("alert", "修改成功！");
		return mv;
	}

	@RequestMapping(value="deleteBook")
	public String deleteBook(String id) {
		books book = new books();
		book.setId(id);
		bookService.deleteBook(book);
		return "checkbookmsg";
	}
}
