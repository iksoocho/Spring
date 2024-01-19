package com.yedam.java.book.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.yedam.java.book.service.BookService;
import com.yedam.java.book.service.BookVO;

@Controller
public class BookController {
	@Autowired
	BookService bookService;
	
	//전체조회
	@GetMapping("bookList")
	public String getBookList(Model model) {
		List<BookVO> list = bookService.getBookAll();
		model.addAttribute("bookList", list);
		return "book/bookList";
	}
	
	//등록 폼 
	@GetMapping("bookInsert")
	public String insertBookInfoForm(Model model) {
		int nextBookNo = bookService.getNextBookNo();
        model.addAttribute("nextBookNo", nextBookNo);
		return "book/bookInsert";
	}
	
	//등록
	@PostMapping("bookInsert")
	public String insertBookInfoProcess(BookVO bookVO) {
		bookService.insertBookInfo(bookVO);
		return "redirect:bookList";

	}
	
	//rentlist
	@GetMapping("rentList")
	public String getRentList(Model model) {
		List<BookVO> list = bookService.getRentAll();
		model.addAttribute("rentList", list);
		return "book/rentList";
	}
	
}
