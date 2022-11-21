package com.its.home.controller;
import org.springframework.beans.factory.annotation.Autowired;
import com.its.home.NaverShopSearch;
import com.its.home.dto.ItemDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class SearchRequestController {
    @Autowired
    private final NaverShopSearch naverShopSearch;


    @GetMapping("/index")
    public String getItems(@RequestParam String query, Model model){
        String resultString = naverShopSearch.search(query);
        List<ItemDto> itemDtos = naverShopSearch.fromJSONtoItems(resultString);
        model.addAttribute("index",itemDtos);
        return "index";
    }
}
