package com.spring.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    private QnaService qnaService;

    @GetMapping("qnaList.do")
    public String getQnaList(Model model, HttpSession session) {
        String sid = (String) session.getAttribute("sid"); // 세션에서 로그인한 사용자의 아이디를 가져옴
        List<Qna> qnaList = qnaService.getQnaList();
        model.addAttribute("qnaList", qnaList);
        model.addAttribute("sid", sid); // JSP에서 사용할 수 있도록 모델에 추가
        return "qna/qnaList";
    }

    @GetMapping("getQna.do")
    public String getQna(@RequestParam("no") int no, Model model, HttpSession session) {
        Qna qna = qnaService.getQna(no);
        String sid = (String) session.getAttribute("sid");
        List<Qna> answerList = qnaService.getAnswers(no); // 답변 리스트 가져오기
        model.addAttribute("qna", qna);
        model.addAttribute("answerList", answerList); // 답변 리스트 추가
        model.addAttribute("sid", sid);
        return "qna/getQna";
    }

    
    @GetMapping("insQna.do")
    public String insQnaForm() {
        return "qna/insQna";
    }

    @PostMapping("insQna.do")
    public String insQna(Qna qna, HttpSession session) {
        String sid = (String) session.getAttribute("sid");
        qna.setAid(sid);
        qnaService.insQna(qna);
        return "redirect:/qna/qnaList.do";
    }

    @GetMapping("upQna.do")
    public String upQnaForm(@RequestParam("no") int no, Model model) {
        Qna qna = qnaService.getQna(no);
        model.addAttribute("qna", qna);
        return "qna/upQna";
    }

    @PostMapping("upQna.do")
    public String upQna(Qna qna) {
        qnaService.upQna(qna);
        return "redirect:/qna/getQna.do?no=" + qna.getNo();
    }

    @GetMapping("delQna.do")
    public String delQna(@RequestParam("no") int no) {
        qnaService.delQna(no);
        return "redirect:/qna/qnaList.do";
    }

    @GetMapping("insAnswer.do")
    public String insQnaAnswerForm(@RequestParam("parno") int parno, Model model) {
        model.addAttribute("parno", parno);
        return "qna/insQnaAnswer";
    }

    @PostMapping("insAnswer.do")
    public String insQnaAnswer(Qna qna, HttpSession session) {
        String sid = (String) session.getAttribute("sid");
        if ("admin".equals(sid)) { // 관리자인지 확인
            qna.setAid(sid);
            qnaService.insQna(qna);
        }
        return "redirect:/qna/getQna.do?no=" + qna.getParno();
    }
}