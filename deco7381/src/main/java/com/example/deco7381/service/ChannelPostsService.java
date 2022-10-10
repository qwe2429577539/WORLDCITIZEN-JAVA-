package com.example.deco7381.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.ChannelPosts;
import com.example.deco7381.pojo.Hobbies;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ChannelPostsService extends IService<ChannelPosts> {
    /**
     * Get all posts by topic
     * @return
     */
    List<ChannelPosts> getAllPosts(String topicName);

}
