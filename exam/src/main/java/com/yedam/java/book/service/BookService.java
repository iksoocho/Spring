package com.yedam.java.book.service;

import java.util.List;

public interface BookService {
	public List<BookVO> getBookAll();
	
	public int insertBookInfo(BookVO bookVO);
	
	public int getNextBookNo();
	
	public List<BookVO> getRentAll();
}
