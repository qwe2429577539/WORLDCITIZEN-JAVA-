package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "course_fields")
public class CourseFields {
    @TableField(value = "field_name")
    private String fieldName;
    @TableField(value = "course_name")
    private String courseName;
    @TableField(value = "course_id")
    private String courseId;

}
