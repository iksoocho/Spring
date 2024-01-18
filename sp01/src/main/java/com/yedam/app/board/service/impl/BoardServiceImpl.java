package com.yedam.app.board.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.app.board.mapper.BoardMapper;
import com.yedam.app.board.service.BoardService;
import com.yedam.app.board.service.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardMapper boardMapper;

	@Override
	public List<BoardVO> getBoardAll() {
		// TODO Auto-generated method stub
		return boardMapper.selectBoardList();
	}

	@Override
	public BoardVO getBoardInfo(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardMapper.selectBoardInfo(boardVO);
	}

	@Override
	public int insertBoardInfo(BoardVO boardVO) {
		// TODO Auto-generated method stub
		int result = boardMapper.insertBoardInfo(boardVO);
		
		if(result ==1) {
			return boardVO.getBno();
		}else {
			return -1;
		}
		
	}

	@Override
	public Map<String, Object> updateBoardInfo(BoardVO boardVO) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		boolean isSuccessed = false;
		
		int result = boardMapper.updateBoardInfo(boardVO);
		if(result == 1) {
			isSuccessed = true;
		}
		map.put("result", isSuccessed);
		map.put("target", boardVO);
		return map;
	}

	@Override
	public boolean deleteBoardInfo(int bno) {
		// TODO Auto-generated method stub
		int result = boardMapper.deleteBoardInfo(bno);
		return result == 1? true:false;
	}

}
