package com.spring.service;

import java.util.List;

import com.spring.dto.Qna;

public interface QnaService {
    List<Qna> getQnaList();
    List<Qna> getRecentQnaList();  // 다시
    Qna getQna(int no);
    void insertQna(Qna qna);
    void updateQna(Qna qna);
    void deleteQna(int no);
    void updateParnoForQna(int no );
    void incrementVisited(int no);  //다시
}