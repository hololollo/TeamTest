package com.spring.controller;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.Member;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/Member/")
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
	public String loginPro(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model, RedirectAttributes rdeirectAtt) {
		session.invalidate();
		Member mem = memberService.getMember(id);
		boolean loginSuccess = pwBCPE.matches(pw, mem.getPw());
		if(loginSuccess) {
			session.setAttribute("mem", mem);
			session.setAttribute("sid", id);
			session.setAttribute("spw", pw);
			model.addAttribute("msg", "로그인 성공");
			return "redirect:/";
		} else {
			rdeirectAtt.addAttribute("msg", "로그인 실패");
			return "redirect:login.do";	
		}
	}
	
	@GetMapping("join.do")
	public String join(@ModelAttribute("member")Member mem, Model model) {
		model.addAttribute("Member", mem);
		return "member/join";
	}
	
	@PostMapping("joinPro.do")
	public String joinPro(HttpServletRequest request, Model model, RedirectAttributes rttr) {
		Member mem = new Member();
		mem.setId(request.getParameter("id"));
		mem.setPw(pwBCPE.encode(request.getParameter("pw")));//암호화 다시.
		mem.setName(request.getParameter("name"));
		mem.setBirth(request.getParameter("year")); //select 로 받아오는 거 확인해야함
		mem.setEmail(request.getParameter("email"));
		mem.setTel(request.getParameter("tel"));
		mem.setAddr(request.getParameter("addr1") + " $ " +request.getParameter("addr2"));
		mem.setPostcode(request.getParameter("postcode"));
		memberService.insMember(mem);
		model.addAttribute("msg", "회원가입이 완료되었습니다. 다시 로그인 해주세요.");
		return "redirect:/";
	}
	
	
	
	
	
}
