package com.spring.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.NoticeDAO;
import com.spring.dto.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
    private NoticeDAO noticeDao; 

    @Override
    public List<Notice> getNoticeList() {
        return noticeDao.getNoticeList();
    }

    @Override
    public Notice getNotice(int bno) {
        return noticeDao.getNotice(bno);
    }

    @Override
    public void insertNotice(Notice notice) {
        noticeDao.insertNotice(notice);
    }

    @Override
    public void updateNotice(Notice notice) {
        noticeDao.updateNotice(notice);
    }

    @Override
    public void deleteNotice(int bno) {
        noticeDao.deleteNotice(bno);
    }
}