package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.dto.Qna;

@Repository
public class QnaDAOImpl implements QnaDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Qna> getQnaList() {
        return sqlSession.selectList("qna.getQnaList");
    }

    @Override
    public List<Qna> getRecentQnaList() { 
        return sqlSession.selectList("qna.getRecentQnaList");
    }

    @Override
    public Qna getQna(int no) {
        return sqlSession.selectOne("qna.getQna", no);
    }

    @Override
    public void insertQna(Qna qna) {
        sqlSession.insert("qna.insertQna", qna);
    }

    @Override
    public void updateQna(Qna qna) {
        sqlSession.update("qna.updateQna", qna);
    }

    @Override
    public void deleteQna(int no) {
        sqlSession.delete("qna.deleteQna", no);
    }

    @Override
    public void updateParnoForQna(int no) {
        sqlSession.update("qna.updateParnoForQna", no);
    }

    @Override
    public void incrementVisited(int no) {
        sqlSession.update("qna.incrementVisited", no);
    }
}