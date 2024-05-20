package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.dto.Notice;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Notice> getNoticeList() {
        return sqlSession.selectList("notice.getNoticeList");
    }

    @Override
    public Notice getNotice(int bno) {
        return sqlSession.selectOne("notice.getNotice", bno);
    }

    @Override
    public void insertNotice(Notice notice) {
        sqlSession.insert("notice.insertNotice", notice);
    }

    @Override
    public void updateNotice(Notice notice) {
        sqlSession.update("notice.updateNotice", notice);
    }

    @Override
    public void deleteNotice(int bno) {
        sqlSession.delete("notice.deleteNotice", bno);
    }
}