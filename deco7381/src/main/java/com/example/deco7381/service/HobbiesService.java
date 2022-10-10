package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Hobbies;
import com.example.deco7381.pojo.Student;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public interface HobbiesService extends IService<Hobbies> {
    List<Hobbies> getHobbies(String studentId);
    void addHobbies(String studentId,String hobby);
    Set<Student> getRandomFriends(String studentId);
}
