package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.dao.books;
import com.web.persistence.BookMapper;

@Service
public class BookService {
	
	@Autowired
	private BookMapper bookMapper;

	public List<books> findBookByName(books book) {
		
		return bookMapper.findBookByName(book);
	}

	public books findByBook(books book) {

		return bookMapper.findByBook(book);
	}

	public books findBookBy(books book) {
		
		return bookMapper.findBookBy(book);
	}
	
	public books addBook(books book) {
		
		return bookMapper.addBook(book);
	}

	public books changeBook(books book) {

		return bookMapper.changeBook(book);
	}

	public String deleteBook(books book) {
		return bookMapper.deleteBook(book);
	}



}
