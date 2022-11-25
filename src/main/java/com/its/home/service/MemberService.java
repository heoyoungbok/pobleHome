package com.its.home.service;

import com.its.home.dto.MemberDTO;
import com.its.home.repository.MemberRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//@Log4j

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result > 0){
            return true;
        } else {
            return  false;
        }
    }






    public String joinCheck(String memberLoginID) {
        String checkResult = memberRepository.joinCheck(memberLoginID);
        if (checkResult == null){
            return "ok";
        }else {
            return "no";
        }

    }


    public boolean login(MemberDTO memberDTO) {
        MemberDTO member = memberRepository.login(memberDTO);
        if (member != null){
            return true;
        }else {
            return false;
        }
    }

    public boolean login(String memberLoginID,String memberPassword){
        MemberDTO memberDTO = memberRepository.login(memberLoginID,memberPassword);
        if (memberDTO != null){
            return true;
        }else {
            return false;
        }
    }


    public List<MemberDTO> memberList() {
        return memberRepository.memberList();
    }

    public MemberDTO findById(String memberLoginID) {
        return memberRepository.findById(memberLoginID);
    }

    public void modify(MemberDTO memberDTO) {
        memberRepository.modify(memberDTO);
    }

    public List<MemberDTO> findAll() {
        List<MemberDTO> memberDTOList = memberRepository.findAll();
        return memberDTOList;
    }
}




