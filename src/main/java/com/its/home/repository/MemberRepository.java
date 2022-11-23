package com.its.home.repository;

import com.its.home.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save",memberDTO);

    }

    public String joinCheck(String memberLoginID) {
        return  sql.selectOne("Member.joinCheck",memberLoginID);
    }


    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }

    public MemberDTO login(String memberLoginID, String memberPassword) {
        MemberDTO member = new MemberDTO();
        member.setMemberLoginID(memberLoginID);
        member.setMemberPassword(memberPassword);
        return sql.selectOne("Member.login",member);
    }

    public List<MemberDTO> memberList() {
        return sql.selectList("Member.memberList");
    }

    public MemberDTO findById(String memberLoginID) {
        return sql.selectOne("Member.findById",memberLoginID);
    }

    public void modify(MemberDTO memberDTO) {
        sql.update("Member.modify",memberDTO);
    }
}
