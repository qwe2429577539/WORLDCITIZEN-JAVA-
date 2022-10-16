package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.ChannelPosts;
import com.example.deco7381.pojo.ChannelTopics;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.vo.GetStudentVo;
import com.example.deco7381.service.ChannelPostsService;
import com.example.deco7381.service.ChannelTopicsService;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Controller
@CrossOrigin
@RestController
@RequestMapping("/channel")

/**
 * A controller for services on channel page
 */
public class ChannelController {

    @Autowired
    private ChannelTopicsService channelTopicsService;
    @Autowired
    private ChannelPostsService channelPostsService;
    @Autowired
    private HobbiesService hobbiesService;
    @Autowired
    private StudentService studentService;

    /**
     * Get all the topics
     * @return
     */
    @GetMapping("/gettopics")
    public List<ChannelTopics> getAllTopics(){
        //get all the topics from database
        List<ChannelTopics> channelTopics = channelTopicsService.getAllTopics();
        //return all the topics
        return channelTopics;
    }


    /**
     * Get all posts by topic
     * @param topicName
     * @return
     */
    @GetMapping("/getposts")
    public R getAllPostsByTopic(String topicName){
        //get all the topics by topics from database
        List<ChannelPosts> channelPosts = channelPostsService.getAllPosts(topicName);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("list",channelPosts);
    }


    /**
     * Get some random friends by recommendation algorithm
     * @return
     */
    @GetMapping("/getfriends")
    public R getRandomFriends(String studentId){
        //get all the random friends by recommendation algorithm from database
        HashMap<String, Set<GetStudentVo>> randomFriends = hobbiesService.getRandomFriends(studentId);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("randomFriend",randomFriends);
    }

    /**
     * Add more post by user itself
     * @param map
     * @return
     */
    @PostMapping("/addpost")
    public R addPost(@RequestBody Map<String,Object> map){
        //set the id
        String userId = (String) map.get("userId");
        //set the topic
        String topic = (String) map.get("topic");
        //set the post content
        String post = (String) map.get("post");
        //add it into the database
        channelPostsService.addPost(userId,topic,post);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }

    /**
     * Get user's posts
     * @param studentId
     * @return
     */
    @GetMapping("/getmypost")
    public R getMyPost(String studentId){
        //get user's posts from database
        List<ChannelPosts> myPost = channelPostsService.getMyPost(studentId);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS).data("myPost",myPost);
    }

    /**
     * Delete user's posts
     * @param map
     * @return
     */
    @PostMapping("/deletepost")
    public R deleteMyPost(@RequestBody Map<String,Object> map){
        //get the id
        String studentId = (String) map.get("studentId");
        //get the post content
        String post = (String) map.get("post");
        //delete the post from database
        channelPostsService.deleteMyPost(studentId,post);
        //return the success message
        return R.ok().resultEnum(ResultEnum.SUCCESS);
    }




}
