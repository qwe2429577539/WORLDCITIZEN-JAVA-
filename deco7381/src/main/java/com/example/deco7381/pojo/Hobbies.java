package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@TableName(value = "Hobbies")
@AllArgsConstructor
@NoArgsConstructor
/**
 * Object of Hobbies
 */
public class Hobbies {
    @TableField(value = "student_id")
    private String studentId;
    @TableField(value = "hobby")
    private String hobby;
    private Long id;
}
