package com.yedam.java.book.service;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BookVO {

	private int bookNo;
	private String bookName;
	private String bookCovering;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date bookDate;
	private int bookPrice;
	private String bookPublisher;
	private String bookInfo;
	
	
	private int rentNo;
	private int rentPrice;
	private Date rentDate;
	private String rentStatus;
	
	private int totalRentPrice;
	private int totalRentStatus;
}
