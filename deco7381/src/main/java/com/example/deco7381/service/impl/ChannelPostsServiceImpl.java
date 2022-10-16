package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.ChannelPostsMapper;
import com.example.deco7381.mapper.HobbiesMapper;
import com.example.deco7381.pojo.ChannelPosts;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.ChannelPostsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Service Implementation class of Channel posts
 */
@Service
public class ChannelPostsServiceImpl extends ServiceImpl<ChannelPostsMapper, ChannelPosts> implements ChannelPostsService {

    @Autowired
    private ChannelPostsMapper channelPostsMapper;
    @Autowired
    private HobbiesMapper hobbiesMapper;

    /**
     * Get all posts by topic name
     * @param topicName
     * @return
     */
    @Override
    public List<ChannelPosts> getAllPosts(String topicName) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<ChannelPosts> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //select posts from database by the topic name
        lambdaQueryWrapper.eq(ChannelPosts::getTopic,topicName);
        List<ChannelPosts> channelPosts = channelPostsMapper.selectList(lambdaQueryWrapper);
        //return all posts
        return channelPosts;
    }

    /**
     * Add post by user's name, topic's content, field's name
     * @param userId
     * @param topic
     * @param post
     */
    @Override
    public void addPost(String userId, String topic, String post) {
        //Initialize new channel posts object
        ChannelPosts channelPosts = new ChannelPosts();
        //set id
        channelPosts.setOwner(userId);
        //set topic
        channelPosts.setTopic(topic);
        //set post content
        channelPosts.setPost(post);
        //insert into database
        channelPostsMapper.insert(channelPosts);
    }

    /**
     * Get user's posts by student id
     * @param studentId
     * @return
     */
    @Override
    public List<ChannelPosts> getMyPost(String studentId) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<ChannelPosts> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        //select posts by student id
        lambdaQueryWrapper.eq(ChannelPosts::getOwner,studentId);
        List<ChannelPosts> channelPosts = channelPostsMapper.selectList(lambdaQueryWrapper);
        //return user's posts
        return channelPosts;
    }

    /**
     * Delete user's post by student and post
     * @param studentId
     * @param post
     */
    @Override
    public void deleteMyPost(String studentId, String post) {
        //initialize the LambdaQueryWrapper
        LambdaQueryWrapper<ChannelPosts> channelPostsLambdaQueryWrapper = new LambdaQueryWrapper<>();
        //delete user's post by user's id and post content
        channelPostsLambdaQueryWrapper.eq(ChannelPosts::getOwner,studentId).eq(ChannelPosts::getPost,post);
        channelPostsMapper.delete(channelPostsLambdaQueryWrapper);
    }


}
