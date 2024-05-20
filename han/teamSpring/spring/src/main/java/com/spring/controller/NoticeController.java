package com.spring.controller;

import java.util.List;

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

    @GetMapping("noticelist")
    public String getNoticeList(Model model) {
        List<Notice> noticeList = noticeService.getNoticeList();
        model.addAttribute("noticeList", noticeList);
        return "notice/noticeList";
    }

    @GetMapping("get")
    public String getNotice(@RequestParam("bno") int bno, Model model) {
        Notice notice = noticeService.getNotice(bno);
        model.addAttribute("notice", notice);
        return "notice/getNotice";
    }

    @GetMapping("insert")
    public String insertNoticeForm(Model model) {
        model.addAttribute("notice", new Notice());
        return "notice/insNotice";
    }

    @PostMapping("insert")
    public String insertNotice(Notice notice, Model model) {
        noticeService.insertNotice(notice);
        return "redirect:list";
    }

    @GetMapping("editNotice")
    public String editNoticeForm(@RequestParam("bno") int bno, Model model) {
        Notice notice = noticeService.getNotice(bno);
        model.addAttribute("notice", notice);
        return "notice/editNotice";
    }

    @PostMapping("edit")
    public String editNotice(Notice notice, Model model) {
        noticeService.updateNotice(notice);
        return "redirect:get?bno=" + notice.getBno();
    }

    @GetMapping("delete")
    public String deleteNotice(@RequestParam("bno") int bno) {
        noticeService.deleteNotice(bno);
        return "redirect:list";
    }
}