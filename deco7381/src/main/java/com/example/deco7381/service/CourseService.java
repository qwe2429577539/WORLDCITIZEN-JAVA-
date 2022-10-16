package com.example.deco7381.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.vo.GetStudentVo;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Service of CourseService
 */

@Service
public interface CourseService extends IService<Course> {
    /**
     * get student's list by student's id
     * @param courseId
     * @return
     */
    List<String> getStudentList(String courseId);

    /**
     * get student's information
     * @param studentList
     * @return
     */
    List<GetStudentVo> getStudentInfo(List<String> studentList);

    /**
     * get the course by course name
     * @param course
     * @return
     */
    Course getCourse(String course);
}
