package com.spring.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
    public String loginPro(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model, RedirectAttributes redirectAtt) {
        // 사용자의 ID로 회원 정보 조회
        Member member = memberService.getMember(id);

        // 회원 정보가 없는 경우
        if (member == null) {
            redirectAtt.addFlashAttribute("msg", "로그인 실패: 존재하지 않는 사용자입니다.");
            return "redirect:login.do";
        }

        // 입력된 비밀번호와 저장된 비밀번호 비교
        boolean loginSuccess = pwBCPE.matches(pw, member.getPw());
        System.out.println("로그인 시도 - 입력된 ID: " + id + ", 입력된 PW: " + pw + ", 저장된 PW: " + member.getPw() + ", 비교 결과: " + loginSuccess);

        // 로그인 성공 시
        if (loginSuccess) {
            // 세션 설정
            session.setAttribute("member", member);
            session.setAttribute("id", id);
            System.out.println("로그인 성공: " + id); // 로그 추가
            model.addAttribute("msg", "로그인 성공");
            return "redirect:/home.jsp"; // 로그인 성공 시 홈으로 리다이렉트
        } else {
            // 로그인 실패 시
            redirectAtt.addFlashAttribute("msg", "로그인 실패: 비밀번호가 일치하지 않습니다.");
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
        mem.setId(request.getParameter("id"));
        mem.setPw(pwBCPE.encode(request.getParameter("pw")));
        mem.setName(request.getParameter("name"));
        String birth = request.getParameter("year") + "-" + request.getParameter("month") + "-" + request.getParameter("day");
        mem.setBirth(birth);
        mem.setGender(request.getParameter("gender"));
        mem.setPostcode(request.getParameter("postcode"));
        String addr = request.getParameter("addr1") + " " + request.getParameter("addr2");
        mem.setAddr(addr);
        memberService.insMember(mem);
        model.addAttribute("msg", "회원가입이 완료되었습니다. 다시 로그인 해주세요.");
        return "redirect:/";
    }

    @RequestMapping("agree.do")
    public String agreeForm() {
        return "member/agree";
    }
 
    @PostMapping("idCheck.do")
    public void idCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        String id = request.getParameter("id");
        Member member = memberService.getMember(id);
        boolean result;
        if (member != null) {
            result = false;
        } else {
            result = true;
        }
        JSONObject json = new JSONObject();
        json.put("result", result);
        PrintWriter out = response.getWriter();
        out.println(json.toString());
    }

    @RequestMapping("logout.do")
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        model.addAttribute("message", "로그아웃");
        return "redirect:/member/login.do";
    }

    @GetMapping("myInfo.do")
    public String myInfo(Model model) {
        Member member = (Member) session.getAttribute("member");
        model.addAttribute("member", member);
        return "member/myInfo";
    }

    @GetMapping("myUpdate.do")
    public String myUpdate(Model model) {
        Member member = (Member) session.getAttribute("member");
        model.addAttribute("member", member);
        return "member/myUpdate";
    }

    @PostMapping("myUpdatePro.do")
    public String myUpdatePro(HttpServletRequest request, Model model, RedirectAttributes rttr) {
        Member member = new Member();
        member.setId(request.getParameter("id"));
        member.setPw(pwBCPE.encode(request.getParameter("pw"))); // 비밀번호 암호화
        member.setName(request.getParameter("name"));
        member.setBirth(request.getParameter("birth"));
        member.setGender(request.getParameter("gender"));
        member.setPostcode(request.getParameter("postcode"));
        member.setAddr(request.getParameter("addr1") + " " + request.getParameter("addr2"));
        memberService.changeInfo(member);
        model.addAttribute("msg", "회원 정보가 업데이트되었습니다. 다시 로그인 해주세요.");
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("memberDelete.do")
    public String memberDelete(@RequestParam("id") String id, Model model) {
        memberService.delMember(id);
        session.invalidate();
        return "redirect:/";
    }
}