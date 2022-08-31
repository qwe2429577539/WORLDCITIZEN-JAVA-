package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "student_course")
public class StudentCourse {
    private Long id;
    private String studentId;
    private String courseId;
}
