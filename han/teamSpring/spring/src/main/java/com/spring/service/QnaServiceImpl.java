package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.QnaDAO;
import com.spring.dto.Qna;



@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
    private QnaDAO qnaDAO;

    @Override
    public List<Qna> getQnaList() {
        return qnaDAO.getQnaList();
    }
    
    @Transactional
    @Override
    public Qna getQna(int no) {
    	qnaDAO.vcntCount(no);
        return qnaDAO.getQna(no);
    }

    @Override
    public void insQna(Qna qna) {
        int plevel;
        if (qna.getParno() == 0) {
            plevel = 0; // 최상위 글인 경우 plevel을 0으로 설정
        } else {
            plevel = qnaDAO.getPlevel(qna.getParno()) + 1; // 부모 글의 plevel을 가져와서 1을 더한 값으로 설정
        }
        qna.setPlevel(plevel);
        qnaDAO.insQna(qna);
    }

    @Override
    public void upQna(Qna qna) {
        qnaDAO.upQna(qna);
    }
    
    @Transactional
    @Override
    public void delQna(int no) {
    	qnaDAO.delAnswers(no);
    	qnaDAO.delQna(no);
    }

    @Override
    public int getPlevel(int parno) {
        return qnaDAO.getPlevel(parno);
    }

    @Override
    public List<Qna> getAnswers(int parno) {
        return qnaDAO.getAnswers(parno);
    }

	@Override
	public void delAnswers(int parno) {
		qnaDAO.delAnswers(parno);
		
	}
    
	 @Override
	public void countUpCnt(int no) {
		 qnaDAO.vcntCount(no);		
	}
    
}