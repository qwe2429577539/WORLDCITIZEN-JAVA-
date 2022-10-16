package com.example.deco7381.service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.ChannelPosts;
import com.example.deco7381.pojo.Hobbies;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Service of ChannelPosts
 */
public interface ChannelPostsService extends IService<ChannelPosts> {
    /**
     * Get all posts by topic
     * @return
     */
    List<ChannelPosts> getAllPosts(String topicName);

    /**
     * add post by user's id, topic name, topic content
     * @param userId
     * @param topic
     * @param post
     */
    void addPost(String userId, String topic, String post);

    /**
     * get user's posts
     * @param studentId
     * @return
     */
    List<ChannelPosts> getMyPost(String studentId);

    /**
     * delete user's posts
     * @param studentId
     * @param post
     */
    void deleteMyPost(String studentId, String post);
}