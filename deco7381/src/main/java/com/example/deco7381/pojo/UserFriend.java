package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName(value = "user_friends")
public class UserFriend {
    private int id;
    private String user;
    private String friend;
}
