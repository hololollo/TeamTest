package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.hibernate.annotations.NaturalId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.dto.Board;
import com.spring.dto.Notice;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Board> getBoardList() {
		return sqlSession.selectList("board.getBoardList");
	}

	@Override
	public Board getBoard(int no) {
		return sqlSession.selectOne("board.getBoard",no);
	}

	@Override
	public void insBoard(Board board) {
		sqlSession.insert("board.insBoard",board);
		
	}

	@Override
	public void upBoard(Board board) {
		sqlSession.update("board.upBoard",board);
		
	}

	@Override
	public void delBoard(int no) {
		sqlSession.delete("board.delBoard",no);
		
	}

	@Override
	public void vcntCount(int no) {
		sqlSession.update("board.vcntCount",no);
		
	}
	
	
}
