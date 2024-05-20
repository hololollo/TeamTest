package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.QnaDAO;
import com.spring.dto.Qna;

@Service
public class QnaServiceImpl implements QnaService {

    @Autowired
    private QnaDAO qnaDao;

    @Override
    public List<Qna> getQnaList() {
        return qnaDao.getQnaList();
    }

    @Override
    public List<Qna> getRecentQnaList() {  // 다시
        return qnaDao.getRecentQnaList();
    }

    @Override
    public Qna getQna(int no) {
        return qnaDao.getQna(no);
    }

    @Override
    public void insertQna(Qna qna) {
        qnaDao.insertQna(qna);
    }

    @Override
    public void updateQna(Qna qna) {
        qnaDao.updateQna(qna); 
    }

    @Override
    public void deleteQna(int no) {
        qnaDao.deleteQna(no);
    }

    @Override
    public void updateParnoForQna(int no) {
        qnaDao.updateParnoForQna(no);
    }

    @Override
    public void incrementVisited(int no) { 
        qnaDao.incrementVisited(no);         
    }
}