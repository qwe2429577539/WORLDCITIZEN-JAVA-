package com.example.deco7381.pojo;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("channel_topics")
public class ChannelTopics {
    private String topic;
}
