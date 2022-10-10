package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.CourseFields;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CourseFieldsService extends IService<CourseFields> {
    /**
     * Get all the course fields
     * @return
     */
    List<CourseFields> getCourseFields();

    /**
     * Get all the course by different course fields
     * @return
     */
    List<CourseFields> getAllCourseByFields(String courseField);

    /**
     * Add courses by student id
     */
    void addCourse(String studentId, String courseId);
}
