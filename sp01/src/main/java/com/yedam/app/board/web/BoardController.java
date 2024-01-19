package com.yedam.app.board.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.app.board.service.BoardService;
import com.yedam.app.board.service.BoardVO;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;

	// 전체 조회
	@GetMapping("boardList")
	public String getBoardList(Model model) {
		List<BoardVO> list = boardService.getBoardAll();
		model.addAttribute("boardList", list);
		return "board/boardList";
	}

	// 단건 조회
	@GetMapping("boardInfo")
	public String getBoardInfo(BoardVO boardVO, Model model) {
		BoardVO findVO = boardService.getBoardInfo(boardVO);
		model.addAttribute("boardInfo", findVO);
		return "board/boardInfo";
	}

	// 등록 폼
	@GetMapping("boardInsert")
	public String insertBoardInfoForm() {
		return "board/boardInsert";
	}

	// 등록
	@PostMapping("boardInsert")
	public String insertBoardInfoProcess(BoardVO boardVO) {
		boardService.insertBoardInfo(boardVO);
		return "redirect:boardList";

	}

	// 수정 폼
	@GetMapping("boardUpdate")
	public String updateBoardInfoForm(BoardVO boardVO, Model model) {
		BoardVO findVO = boardService.getBoardInfo(boardVO);
		model.addAttribute("boardInfo", findVO);
		return "board/boardUpdate";
	}

	// 수정
	@PostMapping("boardUpdate")
	@ResponseBody
	public Map<String, Object> updateBoardInfoProcess(BoardVO boardVO) {
		return boardService.updateBoardInfo(boardVO);
	}

	// 삭제
	@GetMapping("boardDelete")
	public String boardDelete(@RequestParam Integer bno) {
		boardService.deleteBoardInfo(bno);
		return "redirect:boardList";
	}
}
