package com.its.home.controller;


import com.its.home.service.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


@Controller
public class ItemController {
    @Autowired
    private ItemService itemService;
}

//    @RestController // JSON으로 응답함을 선~~언합니다.~~
//    @RequiredArgsConstructor
//    public class SearchRequestController {
//
//        private final NaverShopSearch naverShopSearch;
//
//        @GetMapping("/api/search")
//        public List<ItemDTO> getItems(@RequestParam String query) {
//            String resultString = naverShopSearch.search(query);
//            return naverShopSearch.fromJSONtoItems(resultString);
//        }




