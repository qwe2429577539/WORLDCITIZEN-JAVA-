package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "course")
public class Course {
    private String courseId;
    private String name;

}
