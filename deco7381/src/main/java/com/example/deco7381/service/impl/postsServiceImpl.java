package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.PostsMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Notifications;
import com.example.deco7381.pojo.Posts;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.service.PostsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class postsServiceImpl extends ServiceImpl<PostsMapper, Posts> implements PostsService {

    @Autowired
    private StudentMapper studentMapper;
    @Autowired
    private PostsMapper postsMapper;

    @Override
    public void addPost(String StudentId, String Content) {
        LambdaQueryWrapper<Student> studentLambdaQueryWrapper = new LambdaQueryWrapper<>();
        studentLambdaQueryWrapper.eq(Student::getStudentId, StudentId);
        String studentName = studentMapper.selectOne(studentLambdaQueryWrapper).getName();
        Posts posts = new Posts();
        posts.setPost(Content);
        posts.setStudentName(studentName);
        posts.setStudentId(StudentId);
        postsMapper.insert(posts);
        log.info("Adding post successfully!");
    }

    @Override
    public List<Posts> getPostsById(String StudentId) {
        LambdaQueryWrapper<Posts> postsLambdaQueryWrapper = new LambdaQueryWrapper<>();
        postsLambdaQueryWrapper.eq(Posts::getStudentId, StudentId);
        List<Posts> postsList = postsMapper.selectList(postsLambdaQueryWrapper);
        log.info("Get all the notifications");
        return postsList;
    }
}
