package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("Posts")
public class Posts {
    @TableField("student_id")
    private String StudentId;
    @TableField("student_name")
    private String StudentName;
    @TableField("post")
    private String Post;
}
