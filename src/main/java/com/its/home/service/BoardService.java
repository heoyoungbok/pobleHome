package com.its.home.service;

import com.its.home.dto.BoardDTO;
import com.its.home.repository.BoardRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Service
public class BoardService {
    @Autowired
    private BoardRepository boardRepository;

    public void boardSave(BoardDTO boardDTO)throws Exception {
        System.out.println("파일있음");
        if(!boardDTO.getBoardFile().isEmpty()){
            MultipartFile boardFile = boardDTO.getBoardFile();//1
            String originalFilename = boardFile.getOriginalFilename();//2
            System.out.println("originalFilename = " + originalFilename);
            System.out.println(System.currentTimeMillis());
            String storedFileName = System.currentTimeMillis() + "-" + originalFilename;//3
            System.out.println("storedFileName = " + storedFileName);
            boardDTO.setOriginalFileName(originalFilename);
            boardDTO.setStoredFileName(storedFileName); //4
            String savePath = "C:\\spring_img1\\"+storedFileName; //5
            boardFile.transferTo(new File(savePath));//6
            boardDTO.setFileAttached(1);
            BoardDTO savedBoard = boardRepository.boardSave(boardDTO); //7
            boardRepository.saveFileName(savedBoard);
            System.out.println("BoardService.boardSave");
        } else {
            System.out.println("nofile");
            boardDTO.setFileAttached(0);
            boardRepository.boardSave(boardDTO);
        }
    }
    }

