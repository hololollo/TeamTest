package com.spring.service;

import java.util.List;

import com.spring.dto.Notice;

public interface NoticeService {
    List<Notice> getNoticeList();
    Notice getNotice(int bno);
    void insertNotice(Notice notice);
    void updateNotice(Notice notice);
    void deleteNotice(int bno);
}