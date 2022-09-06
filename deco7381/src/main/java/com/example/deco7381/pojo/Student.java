package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value = "student")
public class Student implements Serializable {
    private String name;
    @TableField(value = "email")
    private String eMail;
    private String country;
    @TableField(value = "student_id")
    private String studentId;
    private String imgSrc;
    private String password;
}
