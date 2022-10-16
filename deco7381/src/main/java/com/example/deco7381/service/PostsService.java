package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Posts;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PostsService extends IService<Posts> {
    void addPost(String StudentId,String Content);
    List<Posts> getPostsById(String StudentId);
}
