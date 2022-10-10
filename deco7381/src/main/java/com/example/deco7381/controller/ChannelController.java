package com.example.deco7381.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.deco7381.pojo.ChannelPosts;
import com.example.deco7381.pojo.ChannelTopics;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.ChannelPostsService;
import com.example.deco7381.service.ChannelTopicsService;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Set;

@Controller
@CrossOrigin
@RestController
@RequestMapping("/channel")
public class ChannelController {

    @Autowired
    private ChannelTopicsService channelTopicsService;
    @Autowired
    private ChannelPostsService channelPostsService;
    @Autowired
    private HobbiesService hobbiesService;
    @Autowired
    private StudentService studentService;

    //读取所有话题板块属性
    /**
     * Get all the topics
     * @return
     */
    @GetMapping("/gettopics")
    public List<ChannelTopics> getAllTopics(){
        List<ChannelTopics> channelTopics = channelTopicsService.getAllTopics();
        return channelTopics;
    }

    //读取该话题板块下的帖子
    /**
     * Get all posts by topic
     * @param topicName
     * @return
     */
    @GetMapping("/getposts")
    public List<ChannelPosts> getAllPostsByTopic(String topicName){
        List<ChannelPosts> channelPosts = channelPostsService.getAllPosts(topicName);
        return channelPosts;
    }

    //生成随机推荐好友
    //通过相似或相等爱好（hobbies表里）
    /**
     * Get some random friends by recommendation algorithm
     * @return
     */
    @GetMapping("/getfriends")
    public Set<Student> getRandomFriends(String studentId){
        Set<Student> studentList = hobbiesService.getRandomFriends(studentId);
        return studentList;
    }






}
