package com.its.home.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;
@Getter
@Setter
@ToString
public  class MemberDTO {

    private Long memberId;
    private String memberName;
    private String memberNickName;
    private String memberLoginID;
    private String memberPassWord;
    private String memberMobile;
    private int memberAge;
    private MultipartFile boardFile;
    private String originalFileName;
    private String storedFileName;
    private int fileAttached;

}
