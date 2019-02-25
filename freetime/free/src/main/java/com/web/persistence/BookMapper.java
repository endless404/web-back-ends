package com.web.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.dao.books;

@Repository
public interface BookMapper {

	List<books> findBookByName(books book);

	books findByBook(books book);
	
	books findBookBy(books book);

	books addBook(books book);

	books changeBook(books book);

	String deleteBook(books book);

}
