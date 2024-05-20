package com.spring.dao;

import java.util.List;

import com.spring.dto.Notice;

public interface NoticeDAO {
    List<Notice> getNoticeList();
    Notice getNotice(int bno);
    void insertNotice(Notice notice);
    void updateNotice(Notice notice);
    void deleteNotice(int bno);
}