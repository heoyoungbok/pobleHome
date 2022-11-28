package com.its.home.controller;

import com.its.home.dto.MemberDTO;
import com.its.home.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm() {
        return "memberPages/memberSave";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO, Model model) {
        boolean result = memberService.save(memberDTO);
        model.addAttribute("result", result);
        return "memberPages/memberLogin";
    }

    @GetMapping("/joinCheck")
    public @ResponseBody String joinCheck(@RequestParam("inputId") String memberLoginID) {
        String checkResult = memberService.joinCheck(memberLoginID);
        return checkResult;

    }

    @GetMapping("/memberList")
    public String memberList(Model model){
        List<MemberDTO> memberList = memberService.memberList();
        model.addAttribute("memberList",memberList);
        return "memberList";
    }

    @GetMapping("/modify")
    public String modifyForm(HttpSession session, Model model){
        String memberLoginID = (String) session.getAttribute("loginID");
        MemberDTO memberDTO = memberService.findById(memberLoginID);
        model.addAttribute("member",memberDTO);
        return "memberPages/modify";
    }
    @PostMapping("/modify")
    public String modify(@ModelAttribute MemberDTO memberDTO, Model model){
        memberService.modify(memberDTO);
        MemberDTO dto = memberService.findById(memberDTO.getMemberLoginID());
        model.addAttribute("member",dto);
        return "main";
    }

    @GetMapping("/myPage")
    public String myPageForm(){
        return "memberPages/myPage";
    }


    @GetMapping("/myInFo")
    public String myInFoForm(){
        return "memberPages/myInFo";
    }

    @GetMapping ("/findAll")
    public String myInFo(Model model){
        List<MemberDTO> memberList = memberService.findAll();
        model.addAttribute("memberList",memberList);
        return "memberPages/myInFo";
    }


}



//    @GetMapping ("/")
//    @GetMapping ("/findby")
//
//}
