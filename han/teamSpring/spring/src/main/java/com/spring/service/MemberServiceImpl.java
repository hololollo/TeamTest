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
    public Member getMember(String userid) {
        return memberDAO.getMember(userid);
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
    public void changePw(Member member) {
        memberDAO.changePw(member);
    }

    @Override
    public void changeInfo(Member member) {
        memberDAO.changeInfo(member);
    }

    @Override
    public void delMember(String userid) {
        memberDAO.delMember(userid);
    }

    @Override
    public String loginCheck(Member member) {
        return memberDAO.loginCheck(member);
    }

    @Override
    public void registerMember(Member member) {
        memberDAO.registerMember(member);
    }

    @Override
    public boolean idCheck(String userid) {
        return memberDAO.idCheck(userid);
    }
}