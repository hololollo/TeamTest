package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.Member;
import com.spring.service.MemberService;



@Controller
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	private MemberService memberService;
	
	@GetMapping("memberList.do")
	public String getCustomList(Model model) {
		List<Member> memberList = memberService.getMemberList();
		model.addAttribute("memberList",memberList);
		return "admin/memberList";
	}
}
