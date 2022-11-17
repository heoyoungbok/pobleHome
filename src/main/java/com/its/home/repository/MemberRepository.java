package com.its.home.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepository {
    private SqlSessionTemplate sql;


    public String joinCheck(String memberLoginID) {
        return  sql.selectOne("Member.joinCheck",memberLoginID);
    }
}
