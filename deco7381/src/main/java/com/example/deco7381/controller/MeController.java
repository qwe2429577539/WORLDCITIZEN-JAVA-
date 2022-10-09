package com.example.deco7381.controller;

import com.example.deco7381.common.R;
import com.example.deco7381.common.ResultEnum;
import com.example.deco7381.pojo.Posts;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.vo.StudentDetailVO;
import com.example.deco7381.service.HobbiesService;
import com.example.deco7381.service.PostsService;
import com.example.deco7381.service.StudentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@Slf4j
@RequestMapping("/me")
public class MeController {
    @Autowired
    private HobbiesService hobbiesService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private PostsService postsService;

    /**
     *Get all information of this user（Name、nationality、major、Tags、hobbies、figure of account.
     */
    @RequestMapping("/info")
    public StudentDetailVO getStudentInfo(String studentId){
        StudentDetailVO studentDetailVO = studentService.getStudent(studentId);
        R.ok();
        return studentDetailVO;
    }


    /**
     *Get all the posts from users.
     */
    @RequestMapping("/posts")
    public List<Posts> getStudentPosts(String studentId){
        List<Posts> postsList = postsService.getPostsById(studentId);
        R.ok();
        return postsList;
    }


}
