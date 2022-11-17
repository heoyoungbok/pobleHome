package com.its.home.controller;

import com.its.home.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(){
        return "save";
    }

    @GetMapping("/joinCheck")
    public @ResponseBody String joinCheck(@RequestParam("inputId")String memberLoginID) {
       String checkResult = memberService.joinCheck(memberLoginID);
       return checkResult;


    }
}
