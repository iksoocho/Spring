package com.yedam.app.board.mapper;

import java.util.List;

import com.yedam.app.board.service.BoardVO;

public interface BoardMapper {
	public List<BoardVO> selectBoardList();
	
	public BoardVO selectBoardInfo(BoardVO boardVO);
	
	public int insertBoardInfo(BoardVO boardVO);
	
	public int updateBoardInfo(BoardVO boardVO);
	
	public int deleteBoardInfo(int bno);
}
