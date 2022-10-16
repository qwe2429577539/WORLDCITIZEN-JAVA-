package com.example.deco7381.pojo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
/**
 * DTO of register request
 */
public class RegisterRequestVo {
    private String studentId;
    private String password;
    private String country;
    private String email;
    private String name;

}
