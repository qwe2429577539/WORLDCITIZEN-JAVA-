package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
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
        LambdaQueryWrapper<ChannelPosts> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(ChannelPosts::getTopic,topicName);
        List<ChannelPosts> channelPosts = channelPostsMapper.selectList(lambdaQueryWrapper);
        return channelPosts;
    }

}
