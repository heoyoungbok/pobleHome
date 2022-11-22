package com.its.home.controller;

import com.its.home.dto.MemberDTO;
import com.its.home.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;

@Controller
public class HomeController {
@Autowired
private MemberService memberService;
    @GetMapping("/")
    public String index(){
        return "main";
    }
//    @GetMapping("/")
//    public String index(){
//        return "index";
//    }
    @GetMapping("/login")
    public  String loginForm(){
        return "memberLogin";
    }
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model) {
        boolean loginResult = memberService.login(memberDTO);
        if (loginResult) {
            session.setAttribute("loginID", memberDTO.getMemberLoginID());
            model.addAttribute("modelLoginID", memberDTO.getMemberLoginID());
            return "redirect:/";
        } else {
            return "memberLogin";
        }
    }
}
