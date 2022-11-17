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
public class ItemDTO {
    private String title;
    private String link;
    private String image;
    private int price;

    public ItemDTO(JSONObject itemJson) {
        this.title = (String) itemJson.get("title");
        this.link = (String) itemJson.get("link");
        this.image = (String) itemJson.get("image");
        this.price = (int) itemJson.get("price");
    }
}



