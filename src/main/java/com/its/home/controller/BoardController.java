package com.its.home.controller;

import com.its.home.dto.BoardDTO;
import com.its.home.service.BoardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;




    @GetMapping("/save")
    public String saveForm(){
        return "boardSave";
    }

    @PostMapping("/save")
    public String boardSave(@ModelAttribute BoardDTO boardDTO) throws Exception{
        boardService.boardSave(boardDTO);
        return "redirect:/board/";
    }

}

