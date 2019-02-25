package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.dao.reader;
import com.web.persistence.ReaderMapper;

@Service
public class ReaderService{
	
	@Autowired
	private ReaderMapper readerMapper;

	public List<reader> findReader(reader read) {
		
		return readerMapper.findReader(read);
	}

	public reader addReader(reader read) {
		
		return readerMapper.addReader(read);
	}

	public reader findIdByReader(reader read) {
		
		return readerMapper.findIdByReader(read);
	}

	public reader addUser(reader read) {
		
		return readerMapper.addUser(read);
	}




}
