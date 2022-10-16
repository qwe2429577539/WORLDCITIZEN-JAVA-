package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.ChannelTopics;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Service of ChannelTopics
 */
public interface ChannelTopicsService extends IService<ChannelTopics> {
    /**
     * get all the topics in forum
     * @return
     */
    List<ChannelTopics> getAllTopics();
}
