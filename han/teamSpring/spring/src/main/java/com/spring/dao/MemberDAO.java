package com.spring.dao;

import java.util.List;

import com.spring.dto.Member;

public interface MemberDAO {
    List<Member> getMemberList();
    Member getMember(String userid);
    int maxNum();
    void insMember(Member member);
    void changePw(Member member);
    void changeInfo(Member member);
    void delMember(String userid);
    String loginCheck(Member member);
    void registerMember(Member member);
    boolean idCheck(String userid);
}