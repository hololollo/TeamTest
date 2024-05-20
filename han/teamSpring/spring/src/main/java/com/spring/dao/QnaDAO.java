package com.spring.dao;

import java.util.List;

import com.spring.dto.Qna;

public interface QnaDAO {
    List<Qna> getQnaList();
    List<Qna> getRecentQnaList(); 
    Qna getQna(int no);
    void insertQna(Qna qna);
    void updateQna(Qna qna);
    void deleteQna(int no);
    void updateParnoForQna(int no);
    void incrementVisited(int no); 
}