package com.its.home.dto;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.json.simple.JSONObject;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class ItemDto {
    private String title;
   private String link;
    private String image;
    private int lprice;



    public ItemDto(org.json.JSONObject itemJson) {
        this.title = itemJson.getString("title");
      this.link = itemJson.getString("link");
        this.image = itemJson.getString("image");
        this.lprice = itemJson.getInt("lprice");
    }



}







