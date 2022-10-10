package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.ChannelTopicsMapper;
import com.example.deco7381.pojo.ChannelTopics;
import com.example.deco7381.service.ChannelTopicsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

public class ChannelTopicsServiceImpl extends ServiceImpl<ChannelTopicsMapper, ChannelTopics> implements ChannelTopicsService {

    /**
     * Get all topics in channel page
     * @return
     */

    @Autowired
    private ChannelTopicsMapper channelTopicsMapper;
    @Override
    public List<ChannelTopics> getAllTopics() {
        LambdaQueryWrapper<ChannelTopics> topicsLambdaQueryWrapper = new LambdaQueryWrapper<>();
        List<ChannelTopics> channelTopics = channelTopicsMapper.selectList(topicsLambdaQueryWrapper);
        return channelTopics;
    }


}
