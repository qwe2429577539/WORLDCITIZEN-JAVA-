package com.example.deco7381.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.deco7381.mapper.CourseMapper;
import com.example.deco7381.mapper.StudentCourseMapper;
import com.example.deco7381.mapper.StudentMapper;
import com.example.deco7381.pojo.Course;
import com.example.deco7381.pojo.Student;
import com.example.deco7381.pojo.StudentCourse;
import com.example.deco7381.service.CourseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class CourseServiceImpl extends ServiceImpl<CourseMapper, Course> implements CourseService {
    @Resource
    private StudentCourseMapper studentCourseMapper;
    @Resource
    private StudentMapper studentMapper;

    @Override
    public List<String> getStudentList(String courseId) {
        HashMap<String, Object> courseIdMap = new HashMap<>();
        courseIdMap.put("course_id",courseId);
        List<StudentCourse> studentCourses = studentCourseMapper.selectByMap(courseIdMap);
        ArrayList<String> studentList = new ArrayList<String>();
        for(StudentCourse studentCourse:studentCourses){
            studentList.add(studentCourse.getStudentId());
        }
        return studentList;
    }

    @Override
    public List<Student> getStudentInfo(List<String> studentIdList) {
        ArrayList<Student> studentList = new ArrayList<>();
        HashMap<String, Object> studentMap = new HashMap<>();
        for(String studentId:studentIdList){
            studentMap.put("student_id",studentId);
            List<Student> students = studentMapper.selectByMap(studentMap);
            for(Student student:students){
                student.setImgSrc("http://localhost:8080/img/"+student.getStudentId()+".jpg");
                studentList.add(student);
            }

        }
        return studentList;
    }

}
