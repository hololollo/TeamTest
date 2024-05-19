package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.MemberDAO;
import com.spring.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public List<Member> getMemberList() {
		return memberDAO.getMemberList();
	}

	@Override
	public Member getMember(String id) {
		return memberDAO.getMember(id);
	}

	@Override
	public int maxNum() {
		return memberDAO.maxNum();
	}

	@Override
	public void insMember(Member member) {
		memberDAO.insMember(member);
	}

	@Override
	public void changePw(String pw) {
		memberDAO.changePw(pw);
	}

	@Override
	public void changeInfo(Member member) {
		memberDAO.changeInfo(member);
	}

	@Override
	public void delMember(String id) {
		memberDAO.delMember(id);
	}	
}
