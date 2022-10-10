package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("channel_posts")
public class ChannelPosts {
    private String topic;
    private String post;
    private Student owner;
}
