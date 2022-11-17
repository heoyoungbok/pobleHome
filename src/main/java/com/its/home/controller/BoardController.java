package com.its.home.controller;

import com.its.home.service.BoardService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BoardController {
    @Autowired
    private BoardService boardService;

}
