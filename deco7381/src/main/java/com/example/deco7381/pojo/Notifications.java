package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("notifications")
public class Notifications {
    @TableField("student_name")
    private String StudentName;
    @TableField("student_id")
    private String StudentId;
    @TableField("content")
    private String Content;

}
