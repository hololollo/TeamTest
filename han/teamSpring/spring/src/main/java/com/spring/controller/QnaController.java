package com.spring.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dto.Qna;
import com.spring.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {

    @Inject
    QnaService qnaService;

    @GetMapping("qnalist.do")
    public String getQnaList(Model model) {
        List<Qna> qnaList = qnaService.getQnaList();
        model.addAttribute("qnaList", qnaList);
        return "qna/qnaList";
    }

    @GetMapping("qnarecent.do")
    public String getRecentQnaList(Model model) {
        List<Qna> recentQnaList = qnaService.getRecentQnaList();
        model.addAttribute("recentQnaList", recentQnaList);
        return "qna/recentQnaList";
    }

    @GetMapping("getQna.do")
    public String getQna(@RequestParam("no") int no, Model model) {
        qnaService.incrementVisited(no); // 방문자 수 증가
        Qna qna = qnaService.getQna(no);
        model.addAttribute("qna", qna);
        return "qna/getQna";
    }

    @GetMapping("insertQna.do")
    public String insertQnaForm(Model model) {
        model.addAttribute("qna", new Qna());
        return "qna/qIns";
    }

    @PostMapping("insertQna.do")
    public String insertQna(Qna qna, Model model) {
        qna.setPlevel(1); // 질문은 plevel이 1
        qnaService.insertQna(qna);
        qnaService.updateParnoForQna(qna.getNo());
        return "redirect:list";
    }

    @GetMapping("insertAnswerproQna.do")
    public String insertAnswerForm(@RequestParam("parno") int parno, Model model) {
        Qna qna = new Qna();
        qna.setPlevel(2); // 답변은 plevel이 2
        qna.setParno(parno); // 부모 글번호 설정
        model.addAttribute("qna", qna);
        return "qna/aIns";
    }

    @PostMapping("insertAnswerQna.do")
    public String insertAnswer(Qna qna, Model model) {
        qnaService.insertQna(qna);
        return "redirect:list";
    }

    @GetMapping("editQna.do")
    public String editQnaForm(@RequestParam("no") int no, Model model) {
        Qna qna = qnaService.getQna(no);
        model.addAttribute("qna", qna);
        return "qna/editQna";
    }

    @PostMapping("editproQna.do")
    public String editQna(Qna qna, Model model) {
        qnaService.updateQna(qna);
        return "redirect:get?no=" + qna.getNo();
    }

    @GetMapping("deleteQna.do")
    public String deleteQna(@RequestParam("no") int no) {
        qnaService.deleteQna(no);
        return "redirect:list";
    }
}