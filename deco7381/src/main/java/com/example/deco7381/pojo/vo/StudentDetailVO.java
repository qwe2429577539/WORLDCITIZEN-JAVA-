package com.example.deco7381.pojo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentDetailVO {
    private String name;
    private String nationality;
    private String major;
    private String hobbies;
    private String tag;
    private String imgSrc;

}
