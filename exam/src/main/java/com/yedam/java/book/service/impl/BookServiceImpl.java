package com.yedam.java.book.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.java.book.mapper.BookMapper;
import com.yedam.java.book.service.BookService;
import com.yedam.java.book.service.BookVO;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookMapper bookMapper;
	
	
	@Override
	public List<BookVO> getBookAll() {
		// TODO Auto-generated method stub
		return bookMapper.selectBookList();
	}

	@Override
	public int insertBookInfo(BookVO bookVO) {
		// TODO Auto-generated method stub
		int result = bookMapper.insertBookInfo(bookVO);
		
		if(result == 1) {
			return bookVO.getBookNo();
		}else {
			return -1;
		}
	}

	@Override
	public int getNextBookNo() {
		// TODO Auto-generated method stub
		Integer maxBookNo = bookMapper.getMaxBookNo();

        // 만약 값이 null이면 기본값인 1을 반환하도록 설정
        return (maxBookNo != null) ? maxBookNo + 1 : 100;
	}

	@Override
	public List<BookVO> getRentAll() {
		// TODO Auto-generated method stub
		return bookMapper.rentList();
	}

}
