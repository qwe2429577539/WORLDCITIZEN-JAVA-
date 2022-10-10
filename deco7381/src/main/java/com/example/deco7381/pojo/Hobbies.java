package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;


@Data
@TableName(value = "Hobbies")
public class Hobbies {
    @TableField(value = "hobby")
    private String hobby;
    @TableField(value = "student_id")
    private String studentId;
}
