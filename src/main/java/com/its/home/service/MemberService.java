package com.its.home.service;

import com.its.home.repository.MemberRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//@Log4j

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;








    public String joinCheck(String memberLoginID) {
        String checkResult = memberRepository.joinCheck(memberLoginID);
        if (checkResult == null){
            return "ok";
        }else {
            return "no";
        }

    }
}




