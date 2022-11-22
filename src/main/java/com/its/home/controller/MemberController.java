package com.its.home.controller;

import com.its.home.dto.MemberDTO;
import com.its.home.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller

public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model){
       boolean result = memberService.save(memberDTO);
       model.addAttribute("result",result);
        return "memberLogin";
    }

    @GetMapping("/joinCheck")
    public @ResponseBody String joinCheck(@RequestParam("inputId")String memberLoginID) {
       String checkResult = memberService.joinCheck(memberLoginID);
       return checkResult;

    }



}
