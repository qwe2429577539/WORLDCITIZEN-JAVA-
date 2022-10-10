package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.ChannelTopics;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ChannelTopicsService extends IService<ChannelTopics> {
    List<ChannelTopics> getAllTopics();
}
