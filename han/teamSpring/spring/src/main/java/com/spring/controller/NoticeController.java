package com.spring.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dto.Notice;
import com.spring.service.NoticeService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("noticeList.do")
    public String getNoticeList(Model model,HttpSession session) {
    	String sid = (String) session.getAttribute("sid");
        List<Notice> noticeList = noticeService.getNoticeList();
        model.addAttribute("noticeList", noticeList);
        model.addAttribute("sid", sid);
        return "notice/noticeList";
    }

    @GetMapping("getNotice.do") 
    public String getNotice(@RequestParam("bno") int bno, Model model,HttpSession session) {
    	String sid = (String) session.getAttribute("sid");
        Notice notice = noticeService.getNotice(bno);
        model.addAttribute("notice", notice);
        model.addAttribute("sid", sid);
        return "notice/getNotice";
    }

    @GetMapping("insertNotice.do")
    public String insertNoticeForm(Model model) {
    	Notice notice = new Notice();
        model.addAttribute("notice", notice);
        return "notice/insNotice";
    }

//    @PostMapping("insertproNotice.do")
//    public String insertNotice(Notice notice, Model model) {
//        noticeService.insertNotice(notice);
//        return "redirect:noticeList.do";
//    }
    @PostMapping("insertproNotice.do")
    public String insertNotice(Notice notice, Model model) {
        System.out.println("Notice to be inserted: " + notice);  // 디버깅용 로그 추가
        notice.setResdate(new Date());
        noticeService.insertNotice(notice);  // noticeService가 올바르게 주입되었는지 확인하세요.
        return "redirect:noticeList.do";
    }

    @GetMapping("editNotice.do")
    public String editNoticeForm(@RequestParam("bno") int bno, Model model) {
        Notice notice = noticeService.getNotice(bno);
        model.addAttribute("notice", notice);
        return "notice/editNotice";
    }

    @PostMapping("editproNotice.do")
    public String editNotice(Notice notice, Model model) {
        noticeService.updateNotice(notice);
        return "redirect:getNotice.do?bno=" + notice.getBno();
    }

    @GetMapping("deleteNotice.do")
    public String deleteNotice(@RequestParam("bno") int bno) {
        noticeService.deleteNotice(bno);
        return "redirect:noticeList.do";
    }
}