package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.BoardDAO;
import com.spring.dto.Board;
@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<Board> getBoardList() {
		return boardDAO.getBoardList();
	}

	@Transactional
	@Override
	public Board getBoard(int no) {
		boardDAO.vcntCount(no);
		return boardDAO.getBoard(no);
	}

	@Override
	public void insBoard(Board board) {
		boardDAO.insBoard(board);		
	}

	@Override
	public void upBoard(Board board) {
		boardDAO.upBoard(board);		
	}

	@Override
	public void delBoard(int no) {
		boardDAO.delBoard(no);		
	}

	@Override
	public void countUpCnt(int no) {
		boardDAO.vcntCount(no);		
	}
	
	
}
