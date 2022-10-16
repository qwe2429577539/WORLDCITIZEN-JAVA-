package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("channel_posts")
/**
 * Object of ChannelPosts
 */
public class ChannelPosts {
    private String topic;
    private String post;
    private String owner;
    @TableId(type = IdType.ASSIGN_ID)
    private Long id;
}
