package com.spring.service;

import java.util.List;

import com.spring.dto.Board;

public interface BoardService {
	public List<Board> getBoardList();
	public Board getBoard(int no);
	public void insBoard(Board board);
	public void upBoard(Board board);
	public void delBoard(int no);
	public void countUpCnt(int no);
}
