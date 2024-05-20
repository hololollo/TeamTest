package com.spring.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.Member;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private HttpSession session;

    @Autowired
    private BCryptPasswordEncoder pwBCPE;

    @GetMapping("login.do")
    public String login(Model model) {
        return "member/login";
    }

    @PostMapping("loginPro.do")
    public String loginPro(@RequestParam("userid") String userid, @RequestParam("password") String password, Model model, RedirectAttributes redirectAtt) {
        session.invalidate();
        Member mem = memberService.getMember(userid);
        boolean loginSuccess = pwBCPE.matches(password, mem.getPassword());
        if (loginSuccess) {
            session.setAttribute("mem", mem);
            session.setAttribute("sid", userid);
            session.setAttribute("spw", password);
            model.addAttribute("msg", "로그인 성공");
            return "redirect:/"; // 로그인 성공 시 home.jsp로 이동
        } else {
            redirectAtt.addAttribute("msg", "로그인 실패");
            return "redirect:login.do";
        }
    }

    @GetMapping("join.do")
    public String join(@ModelAttribute("member") Member mem, Model model) {
        model.addAttribute("Member", mem);
        return "member/join";
    }

    @PostMapping("joinPro.do")
    public String joinPro(HttpServletRequest request, Model model, RedirectAttributes rttr) {
        Member mem = new Member();
        mem.setUserid(request.getParameter("userid"));
        mem.setPassword(pwBCPE.encode(request.getParameter("password")));
        mem.setName(request.getParameter("name"));
        mem.setYear(request.getParameter("year"));
        mem.setMonth(request.getParameter("month"));
        mem.setDay(request.getParameter("day"));
        mem.setGender(request.getParameter("gender"));
        mem.setPostcode(request.getParameter("postcode"));
        mem.setRoadaddr1(request.getParameter("roadaddr1")); 
        mem.setRoadaddr2(request.getParameter("roadaddr2"));
        memberService.insMember(mem);
        model.addAttribute("msg", "회원가입이 완료되었습니다. 다시 로그인 해주세요.");
        return "redirect:/";
    }

    @RequestMapping("agree.do")
    public String agreeForm() {
        return "member/agree";
    }

    @PostMapping("idCheck.do")
    @ResponseBody
    public String idCheck(@RequestParam("id") String id) {
        boolean result = memberService.idCheck(id);
        return "{\"result\": " + result + "}";
    } 

    @RequestMapping("logout.do")
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        model.addAttribute("message", "로그아웃");
        return "redirect:/member/login.do";
    }
}