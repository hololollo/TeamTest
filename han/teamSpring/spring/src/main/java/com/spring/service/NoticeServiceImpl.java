package com.spring.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.NoticeDAO;
import com.spring.dto.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
    private NoticeDAO noticeDAO; 

    @Override
    public List<Notice> getNoticeList() {
        return noticeDAO.getNoticeList();
    }

    @Transactional
    @Override
    public Notice getNotice(int bno) {
    	noticeDAO.vcntCount(bno);
        return noticeDAO.getNotice(bno);
    }

    @Override
    public void insertNotice(Notice notice) {
    	noticeDAO.insertNotice(notice);
    }

    @Override
    public void updateNotice(Notice notice) {
    	noticeDAO.updateNotice(notice);
    }

    @Override
    public void deleteNotice(int bno) {
    	noticeDAO.deleteNotice(bno);
    }

    @Override
	public void countUpCnt(int bno) {
		noticeDAO.vcntCount(bno);		
	}
     
}