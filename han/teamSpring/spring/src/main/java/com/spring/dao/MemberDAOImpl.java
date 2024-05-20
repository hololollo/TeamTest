package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
import com.spring.dto.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Member> getMemberList() {
        return sqlSession.selectList("getMemberList");
    }

    @Override
    public Member getMember(String userid) {
        return sqlSession.selectOne("getMember", userid);
    }

    @Override
    public int maxNum() {
        return sqlSession.selectOne("maxNum");
    }

    @Override
    public void insMember(Member member) {
        sqlSession.insert("insMember", member);
    }

    @Override
    public void changePw(Member member) {
        sqlSession.update("changePw", member);
    }

    @Override
    public void changeInfo(Member member) {
        sqlSession.update("changeInfo", member);
    }

    @Override
    public void delMember(String userid) {
        sqlSession.delete("delMember", userid);
    }

    @Override
    public String loginCheck(Member member) {
        return sqlSession.selectOne("loginCheck", member);
    }

    @Override
    public void registerMember(Member member) {
        sqlSession.insert("registerMember", member);
    }

    @Override
    public boolean idCheck(String userid) {
        int count = sqlSession.selectOne("idCheck", userid);
        return count == 0;
    }
}