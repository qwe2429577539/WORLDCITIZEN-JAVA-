package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Hobbies;
import org.springframework.stereotype.Service;

import java.util.List;

public interface HobbiesService extends IService<Hobbies> {
    List<String> getHobbies(String studentId);
}
