package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CourseService extends IService<Course> {
    List<String> getStudentList(String courseId);

    List<Student> getStudentInfo(List<String> studentList);

    Course getCourse(String course);
}
