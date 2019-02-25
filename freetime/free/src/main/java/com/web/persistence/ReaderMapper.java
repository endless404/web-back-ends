package com.web.persistence;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.web.dao.reader;

@Repository
public interface ReaderMapper {

	List<reader> findReader(reader read);

	reader addReader(reader read);

	reader findIdByReader(reader read);

	reader addUser(reader read);

}
