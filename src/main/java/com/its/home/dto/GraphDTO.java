package com.its.home.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class GraphDTO {

    private int pos_seq;
    private String pos_type;
    private String pos_time;
    private int pos_count;

}
